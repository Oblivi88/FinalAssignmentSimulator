// declaring variables used
class Tasks {
  // timer to complete each task
  int timer;
  PFont font;
  // images stating what each task is and how to do it on the cockpit display
  PImage task1;
  PImage task2;
  PImage task3;
  PImage task4;
  PImage taskdirections;
  PImage directionKey;
  PImage check;
  PImage holdMouse;
  // determines which task is being displayed, corresponds to argument of the constructor
  int taskassignment;
  // tells the main tab whether or not the score increased
  boolean scoreIncrease;
  // whether or not the control stick glows
  int isStickGlowing;
  // argument tells main tab which task is being called in the array 
 Tasks(int taskassign) {
   // timer for each task  
  font = createFont("Consolas", 75);
  // each task displayed on the lefthand side
  task2 = loadImage("task1.png");
  task3 = loadImage("task2.png");
  task4 = loadImage("task3.png");
  task1 = loadImage("task0.png");
  // directions and how-to displayed on the righthand side
  taskdirections = loadImage("taskdirections.png");
  directionKey = loadImage("directionKey.png");
  holdMouse = loadImage("HoldLeftMouse.png");
  // if task is complete, show checkmark
  check = loadImage("check.png");
  // for the argument
  taskassignment = taskassign;
  // resets to false every time so the score can increase once each task
  scoreIncrease = false;

 }
 void start() {
   // timer display
   textFont(font, 75);
   fill(0, 180, 0);
   if (timer > 0) {
     text(timer, 200, 600);
   }
   // timer counting one per second
   if (frameCount % 60 == 0) {
     timer--;
   }
   // display directions
   image(taskdirections, 580, 540);
   
   
   // FIRST TASK
   if (taskassignment == 1) {
     image(task1, 220, 540);
     image(holdMouse,580, 540);
     isStickGlowing = 255;
   }
     
   
   // SECOND TASK
   if (taskassignment == 2) {
     image(task2, 220, 540);
     image(directionKey, 580, 540);
     isStickGlowing = 0;
     text("F", 560, 590);
     if (key == 'f') {
       image(check, 220, 550);
       scoreIncrease = true;
     }
    // THIRD TASK  
   } else if (taskassignment == 3) {
     image(task3, 220, 540);
     image(directionKey, 580, 540);
     text("L", 560, 590);
     if (key == 'l') {
       image(check, 220, 550);
       scoreIncrease = true;
     }
     // FOURTH TASK
   } else  if (taskassignment == 4) {
     image(task4, 220, 540);
     image(holdMouse,580, 540);
   }
 }
}
