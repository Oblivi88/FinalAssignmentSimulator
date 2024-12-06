class Cockpit {
 Cockpit() {
   
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
   
   // control stick glow
   fill(255, task[index].isStickGlowing);
   rect(350, 680, 100, 120);
   ellipse(400, 680, 180, 140);
   fill(20);
   rect(360, 680, 80, 120);
   fill(40);
   ellipse(400, 680, 160, 120);
  
 }
  
  
}
