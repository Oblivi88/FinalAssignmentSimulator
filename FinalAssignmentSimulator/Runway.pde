class Runway {
  PVector runwayPos1;
  PVector runwayPos2;
  PVector runwayPos3;
  PVector runwayPos4;
  
 Runway() {
   runwayPos1 = new PVector(350, 300);
   runwayPos2 = new PVector(450, 300);
   runwayPos3 = new PVector(550, 350);
   runwayPos4 = new PVector(250, 350);
 }
 void create() {
    fill(0);
    quad(runwayPos1.x, runwayPos1.y, runwayPos2.x, runwayPos2.y, runwayPos3.x, runwayPos3.y, runwayPos4.x, runwayPos4.y);
 }
  
  
}
