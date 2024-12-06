// declaring objects of the cockpit, runway, and tasks
Cockpit cockpitObject;
Runway runwayObject;
Tasks[] task = new Tasks[5];
// will start game when true
boolean gameStart;
// win condition
boolean didWin;
// cycles through the different tasks
int index;
// increases by one every time a task is completed
int score;
// pre-game menu images
PImage title;
PImage start;
PImage instructions;
PImage scoreimage;
PImage again;

PFont font;

void setup() {
  size(800, 800);
  imageMode(CENTER);
  didWin = true;
  // pre-game menu images
  title = loadImage("Title.png");
  start = loadImage("Start.png");
  instructions = loadImage("instructions.png");
  scoreimage = loadImage("score.png");
  again = loadImage("again.png");
  // create objects
  cockpitObject = new Cockpit();
  runwayObject = new Runway();
  // for loop to create the four different task objects
  for (int i = 0; i < 5; i++) {
    task[i] = new Tasks(i + 1);
  }
  font = createFont("Consolas", 75);
    
  
  index = 0;
  score = 0;
  gameStart = false;
}

void draw() {
  background(135,206,235);
  // draw images
  image(title, 400, 150);
  image(start, 400, 400);
  image(instructions, 400, 750);
  // if the mouse is within the coords of the button and is clicked, start the game
  if (!gameStart && mousePressed) {
    if (mouseX >= 225 && mouseX <= 575 && mouseY >= 300 && mouseY <= 500) {
      gameStart = true;
    }
  }
  // if the button is clicked, set off game() function 
  if (gameStart) {
    game();
  }
}
// main game loop
void game() {
  background(135,206,235);
  // draw runway and cockpit objects
  runwayObject.create();
  cockpitObject.create();
  // begin moving the runway closer
  runwayObject.move();
  // activate runway alignment if index = 0
  if (index == 0) {
    runwayObject.task1();
  }
  // create the task object
  if (index <= task.length) {
    task[index].start();
  }
  // when the timer runs out, iterate to next task, increase score, and reset timer
  if (task[index].timer == -1) {
    // if the scoreIncrease is triggered in task tab, increase score here
    if (task[index].scoreIncrease == true) {
      score++;
    }
    // reset the timer to 4 each time, unless stated otherwise.
    if (index == 0) {
      task[index].timer = 8;
    } else if (index == 3) {
      task[index].timer = 6;
    } else if (index == 4) {
      task[index].timer = 1000;
    } else {
      task[index].timer = 4;
    }
    // iterates to next task
    index++;
    if (index >= task.length) {
      index = 0;
    }
  }
  if (score < 4) {
    didWin = false;
  }
  
  if (runwayObject.runwayPos3.y >= 770) {
    fill(0, 180, 0);
    image(scoreimage, 220, 560);
    text(score + "/4", 150, 590);
    text("YOU", 515, 535);
    if (didWin == true) {
      text("WIN", 495, 595);
    } else if (!didWin) {
      text("LOSE", 495, 595);
    }
    image(again, 400, 360);
    if (mousePressed && mouseX >= 260 && mouseX <= 540 && mouseY >= 280 && mouseY <= 440) {
      gameStart = false;
    }
  }

}
