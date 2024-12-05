class Tasks {
  int timer;
  PFont font;
  PImage task1;
  PImage task2;
  PImage task3;
  PImage taskdirections;
  PImage directionKey;
  PImage check;
  boolean willScoreIncrease;
  int taskassignment;
  int score;

 Tasks(int taskassign) {
  timer = 4;  
  font = createFont("Consolas", 75);
  task1 = loadImage("task1.png");
  task2 = loadImage("task2.png");
  task3 = loadImage("task3.png");
  taskdirections = loadImage("taskdirections.png");
  directionKey = loadImage("directionKey.png");
  check = loadImage("check.png");
  taskassignment = taskassign;
  willScoreIncrease = false;
 }
 void start() {
   textFont(font, 75);
   fill(0, 180, 0);
   text(timer, 200, 600);
   if (frameCount % 60 == 0) {
     timer--;
   }

   image(taskdirections, 580, 540);
   
   
   if (taskassignment == 1) {
     image(task1, 220, 540);
     image(directionKey, 580, 540);
     text("F", 560, 590);
     if (key == 'f') {
       image(check, 220, 550);
       if (!willScoreIncrease) {
         score++;
         willScoreIncrease = true;
       }
     }
     
     
   } else if (taskassignment == 2) {
     image(task2, 220, 540);
     image(directionKey, 580, 540);
     text("L", 560, 590);
     if (key == 'l') {
       image(check, 220, 550);
       if (!willScoreIncrease) {
         score++;
         willScoreIncrease = true;
       }
     }
   } else  if (taskassignment == 3) {
     image(task3, 220, 540);
   }
 }
}
