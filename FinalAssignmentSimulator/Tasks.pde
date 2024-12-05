class Tasks {
  int timer;
  
 Tasks() {
  timer = 3;
 }
 void start(int task) {
   if (frameCount % 60 == 0) {
     timer--;
   }
   if (task == 1) {
     println(timer);
   }
 }
}
