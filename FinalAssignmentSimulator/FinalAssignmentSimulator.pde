Cockpit cockpitObject;
Runway runwayObject;
Tasks[] task = new Tasks[3];

boolean gameStart;

PImage title;
PImage start;
PImage instructions;

PFont font;

void setup() {
  size(800, 800);
  imageMode(CENTER);
  title = loadImage("Title.png");
  start = loadImage("Start.png");
  instructions = loadImage("instructions.png");
  cockpitObject = new Cockpit();
  runwayObject = new Runway();
  for (int i = 0; i < 3; i++) {
    task[i] = new Tasks();
  }
  font = createFont("Consolas", 75);
  gameStart = false;
}

void draw() {
  background(135,206,235);
  image(title, 400, 150);
  image(start, 400, 400);
  image(instructions, 400, 750);
  if (!gameStart && mousePressed) {
    if (mouseX >= 225 && mouseX <= 575 && mouseY >= 300 && mouseY <= 500) {
      gameStart = true;
    }
  }
  if (gameStart) {
    game();
  }
}

void game() {
  background(135,206,235);
  runwayObject.create();
  cockpitObject.create();
  runwayObject.move();
  task[0].start(task[0].taskassign);
  textFont(font);
  fill(0, 180, 0);
  text(task[0].timer, 200, 600);
  
}
