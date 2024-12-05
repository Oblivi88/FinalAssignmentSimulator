class Tasks {
  int timer;
  PImage task1;
  PImage task2;
  PImage task3;
  PImage taskdirections;
  PImage directionKey;
  PImage check;
  int taskassign;
  int score;
  boolean hasScoreIncreased;

 Tasks() {
  timer = 4;
  score = 0;
  task1 = loadImage("task1.png");
  task2 = loadImage("task2.png");
  task3 = loadImage("task3.png");
  taskdirections = loadImage("taskdirections.png");
  directionKey = loadImage("directionKey.png");
  check = loadImage("check.png");
  taskassign = 1;
  hasScoreIncreased = false;
 }
 void start(int task) {
   if (frameCount % 60 == 0) {
     timer--;
   }
   if (timer == -1) {
     timer = 3;
     taskassign++;
     hasScoreIncreased = false;
   }
   image(taskdirections, 580, 540);
   
   
   if (task == 1) {
     image(task1, 220, 540);
     image(directionKey, 580, 540);
     text("F", 560, 590);
     if (key == 'f') {
       image(check, 220, 550);
     }
     if (key == 'f' && !hasScoreIncreased) {
       score++;
       hasScoreIncreased = true;
     }
     
     
   } else if (task == 2) {
     image(task2, 220, 540);
     image(directionKey, 580, 540);
     text("L", 560, 590);
     if (key == 'l') {
       image(check, 220, 550);
     }
     if (key == 'l' && !hasScoreIncreased) {
       score++;
       hasScoreIncreased = true;
     }
   } else  if (task == 3) {
     image(task3, 220, 540);
   }
 }
}
