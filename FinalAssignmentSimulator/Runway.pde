class Runway {
  PVector runwayPos1;
  PVector runwayPos2;
  PVector runwayPos3;
  PVector runwayPos4;
  float i;

  
 Runway() {
   runwayPos1 = new PVector(395, 280);
   runwayPos2 = new PVector(405, 280);
   runwayPos3 = new PVector(425, 360);
   runwayPos4 = new PVector(375, 360);
   i = 0.05;
 }
 void create() {
    fill(25, 155, 39);
    rect(0, runwayPos1.y, 800, 800);
    fill(30);
    quad(runwayPos1.x, runwayPos1.y, runwayPos2.x, runwayPos2.y, runwayPos3.x, runwayPos3.y, runwayPos4.x, runwayPos4.y);
 }
  
 void move() {
   
   if (runwayPos2.y <= 345) {
     i = i + 0.005;
     runwayPos1.add(-0.005, 0.055);
     runwayPos2.add(0.005, 0.055);
     runwayPos3.add(0.085*i, 0.025*i);
     runwayPos4.add(-0.085*i, 0.025*i);
   } else {
     i = i + 0.15;
     runwayPos1.add(-0.005, 0.005);
     runwayPos2.add(0.005, 0.005);
     runwayPos3.add(0.1*i, 0.025*i);
     runwayPos4.add(-0.1*i, 0.025*i);
   }
  
 }
}
