// P1 project, interactive poster

int backgroundColour;
int myY;

void setup() {
  size(842, 1191);    // A3 paper size
  rectMode(CENTER);
}

void draw() {
  backgroundColour = #FFFFFF;
  background(backgroundColour);

  rect(width/2, height/2 +myY, 100, 100);
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  myY = myY + int(e);
  println(e);
}
