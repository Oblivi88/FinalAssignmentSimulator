class Tasks {
  int timer;
  PImage task1;
  PImage task2;
  PImage task3;
  PImage taskdirections;
  PImage directionKey;

 Tasks() {
  timer = 4;
  task1 = loadImage("task1.png");
  task2 = loadImage("task2.png");
  task3 = loadImage("task3.png");
  taskdirections = loadImage("taskdirections.png");
  directionKey = loadImage("directionKey.png");
 }
 void start(int task) {
   if (frameCount % 60 == 0) {
     timer--;
   }
   image(taskdirections, 580, 540);
   image(directionKey, 580, 540);
   if (task == 1) {
     image(task1, 220, 540);
   } else if (task == 2) {
     image(task2, 220, 540);
   } else  if (task == 3) {
     image(task3, 220, 540);
   }
 }
}
