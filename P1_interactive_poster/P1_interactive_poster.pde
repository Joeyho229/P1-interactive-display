// P1 project, interactive poster

PImage backgroundImage, frontgroundImage;

int backgroundColour, screenY;
int TopLimit = 3600;
int BottomLimit = 0;
int YstartingValue = -4248;

boolean showImage = true;

void setup() {
  size(1920, 1080);
  backgroundImage = loadImage("P1CityTest.png");
  frontgroundImage = loadImage("FrontPage5G.jpg");
}

void draw() {  
  if (showImage == true) {    // If condition set for the frontpage
    image(frontgroundImage, 0, 0);
  } else if (showImage == false) {
    image(backgroundImage, 0, YstartingValue + screenY);    // The X, Y coordinates of the picture is set to 0, YstartingValue, thats beccause we want it to start from the buttom and then scroll up
  }
}

void mouseWheel(MouseEvent event) {
  if (showImage == true) {
  } else if (showImage == false) {
    float e = event.getCount();
    screenY = screenY + int(e) * 18;    // Defining the value screenY with the event.getCount(), additionally it also increases the scroll speed
    println(screenY);
  }

  if (screenY < 0) {    // Stating the boundaries for minimum scrolling point
    screenY = BottomLimit;
  } else if (screenY > 3600) {    // Stating the boundaries for maximum scrolling point
    screenY = TopLimit;
  }
}

void mouseClicked() {  
  showImage = false;    // Condition for the frontpage to dissapear
}
