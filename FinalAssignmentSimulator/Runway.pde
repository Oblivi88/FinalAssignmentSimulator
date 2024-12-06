class Runway {
  // PVectors for runway position, speed, and velocity
  PVector runwayPos1;
  PVector runwayPos2;
  PVector runwayPos3;
  PVector runwayPos4;
  PVector runwayVelocity;
  PVector runwaySpeed1;
  PVector runwaySpeed2;
  PVector runwayAlignSpeed;
  float runwayMid;

  // set PVector values
 Runway() {
   runwayPos1 = new PVector(285, 170);
   runwayPos2 = new PVector(295, 170);
   runwayPos3 = new PVector(315, 250);
   runwayPos4 = new PVector(265, 250);
   runwayVelocity = new PVector(0.05, 0.05);
   runwayAlignSpeed = new PVector(0.5, 0);
 }
 // draw runway
 void create() {
    fill(25, 155, 39);
    rect(0, runwayPos1.y, 800, 800);
    fill(30);
    quad(runwayPos1.x, runwayPos1.y, runwayPos2.x, runwayPos2.y, runwayPos3.x, runwayPos3.y, runwayPos4.x, runwayPos4.y);
 }
  
 void move() {
   runwayMid = (runwayPos1.x + runwayPos2.x) / 2;
   // while the runway is at a certain height on screen, set the speed to this
   if (runwayPos2.y <= 345) {
     runwaySpeed1 = new PVector(0.005, 0.055);
     runwaySpeed2 = new PVector(0.085, 0.025);
     runwayVelocity.add(0.005, 0.005);
     runwayPos1.add(-runwaySpeed1.x, runwaySpeed1.y);
     runwayPos2.add(runwaySpeed1.x, runwaySpeed1.y);
     runwayPos3.add(runwaySpeed2.x*runwayVelocity.x, runwaySpeed2.y*runwayVelocity.y);
     runwayPos4.add(-runwaySpeed2.x*runwayVelocity.x, runwaySpeed2.y*runwayVelocity.y);
   } else {
     // once it passes that point, change the speed
     runwaySpeed1 = new PVector(0.005, 0.005);
     runwaySpeed2 = new PVector(0.1, 0.025);
     runwayVelocity.add(0.15, 0.15);
     runwayPos1.add(-runwaySpeed1.x, runwaySpeed1.y);
     runwayPos2.add(runwaySpeed1.x, runwaySpeed1.y);
     runwayPos3.add(runwaySpeed2.x*runwayVelocity.x, runwaySpeed2.y*runwayVelocity.y);
     runwayPos4.add(-runwaySpeed2.x*runwayVelocity.x, runwaySpeed2.y*runwayVelocity.y);
   }
  
 }
 void task1() {
   if (mousePressed && mouseX >= 320 && mouseX <= 480 && mouseY >= 620 && mouseY <= 740) {
     if (runwayMid < 400) {
       runwayPos1.add(runwayAlignSpeed);
       runwayPos2.add(runwayAlignSpeed);
       runwayPos3.add(runwayAlignSpeed);
       runwayPos4.add(runwayAlignSpeed);
     }
   }
 }
}
