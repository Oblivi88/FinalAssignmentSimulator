class Cockpit {
  PVector throttlePos;
 Cockpit() {
   throttlePos = new PVector(70, 660);
 }
 // draw cockpit
 void create() {
   stroke(80);
   strokeWeight(65);
   fill(0, 0);
   circle(400, 380, 820);
   noStroke();
   fill(80);
   rect(120, 440, 560, 360);
   quad(120, 600, 680, 600, 800, 700, 0, 700);
   rect(0, 700, 800, 100);
   fill(80, 120, 80, 150);
   quad(300, 280, 360, 220, 440, 220, 500, 280);
   rect(300, 280, 190, 160);
   fill(80);
   rect(300, 280, 10, 160);
   rect(490, 280, 10, 160);
   fill(0, 30, 0);
   square(140, 460, 160);
   square(500, 460, 160);
   
   // control stick and glow
   fill(255, task[index].isStickGlowing);
   rect(350, 680, 100, 120);
   ellipse(400, 680, 180, 140);
   fill(20);
   rect(360, 680, 80, 120);
   fill(40);
   ellipse(400, 680, 160, 120);
   
   // throttle and glow
   fill(20);
   quad(110, 740, 50, 800, 100, 800, 160, 740);
   fill(255, task[index].isThrottleGlowing);
   rect(throttlePos.x-10, throttlePos.y-10, 180, 100);
   fill(40);
   rect(throttlePos.x, throttlePos.y, 160, 80);
   // if the throttle is still above the target position (stop when it reaches that)
   if (throttlePos.y+80 < 800) {
     if (index == 3 && mousePressed && mouseX >= throttlePos.x && mouseX <= throttlePos.x + 160 && mouseY >= throttlePos.y && mouseY <= throttlePos.y + 80) {
       throttlePos.sub(0.25, -0.25);
     }
   }
  
 }
 
 // resets to default values at the beginning of a new game
 void resetThrottle() {
   throttlePos = new PVector(70, 660);
 }
}
