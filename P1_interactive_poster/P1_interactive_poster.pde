// P1 project, interactive poster

// text
String words = "Læs mere...";
String str2 = "5G er godt og det vil bidrage...";
String str3IoT = "With the Internet of Thing more than billions of devices and physical objects will be connected in an online world. This will quickly make the world smart and people's lives even easier";
String str45Gcon = "With new technologies arise new concerns, with 4G already emitting radiation this number will rise once 5G is launched. This has already made many to speculate about the safety of implementing 5G on the market. Many people have already begun to express their opinion and concern on the internet.";


PImage backgroundImage, frontgroundImage;

int backgroundColour, screenY;
int TopLimit = 3600;
int BottomLimit = 0;
int YstartingValue = -4248;

boolean showImage = true;
boolean hitbox = true;
boolean textHasBeenClicked = false;

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

  if (textHasBeenClicked) {
    //display text 2 - New information box
    fill(0);
    text (str2, width/2+100, height/2+20+screenY);
  } else {
    //display text 1 - Old box
    fill(0);
    //textSize(32);
    text(words, width/2+100, height/2+20+screenY);
  }

  //text about 5G concerns

  //fill(255,0,0);
  //textSize(32);
  text(str45Gcon, width/2+100, height-2800+screenY);
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
