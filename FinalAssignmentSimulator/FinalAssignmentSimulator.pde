boolean gameStart;

PImage title;
PImage start;

void setup() {
  size(800, 800);
  imageMode(CENTER);
  title = loadImage("Title.png");
  start = loadImage("Start.png");
  gameStart = false;
}

void draw() {
  background(135,206,235);
  image(title, 400, 150);
  image(start, 400, 400);
  if (!gameStart && mousePressed) {
    if (mouseX >= 225 && mouseX <= 575 && mouseY >= 300 && mouseY <= 500) {
      gameStart = true;
    }
  }
  println(gameStart);
}
