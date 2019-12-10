// P1 project, interactive poster

PImage backgroundImage;

int backgroundColour;
int screenY;
int TopLimit = 2790;
int BottomLimit = 0;
int YstartingValue = -2801;

void setup() {
  size(555, 1080);
  backgroundImage = loadImage("123456.png");
}

void draw() {
  image(backgroundImage, 0, YstartingValue + screenY);    // The X, Y coordinates of the picture is set to 0, YstartingValue, thats beccause we want it to start from the buttom and then scroll up
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  screenY = screenY + int(e)*18;    // Defining the value screenY with the event.getCount(), additionally it also increases the scroll speed
  println(screenY);

  if (screenY < 0) {    // Stating the boundaries for minimum scrolling point
    screenY = BottomLimit;
  } else if (screenY > 2790) {    // Stating the boundaries for maximum scrolling point
    screenY = TopLimit;
  }
}
