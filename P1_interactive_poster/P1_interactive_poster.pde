// P1 project, interactive poster

// Text
String ReadMore = "Læs mere...";
String ReadMore5G = "BLABLABLABLAAAA";
String ReadMoreIoT = "BLABLABLA";
String ReadMoreConcerns = "BLABLABLA";
String ReadMoreRadiation = "BLABLABLA";
String ReadMoreConclusion = "BLABLABLA";

String TextFor5G = "Hurtigere Internet\nEt mere forbundet samfund\nGavner digital kommunikation\nForbedret dæknings ydeevne";
String TextForIoT = "Forbinde flere enheder sammen uafhængigt af hvor man befinder sig\nSkaber en nemmere hverdag\nEt forbundet samfund";
String TextForConcerns = "Frygten for mere stråling\nBekymringer om overvågning\nSårbarhed overfor hackere";
String TextForRadiation = "Er forøget stråling farligt?\nEr 5G farligt for samfundet?\nSkal 5G forbydes?";
String TextForConclusion = "5G er en god mulighed for at bane bølgen for fremtiden og øge den eksponentielle udbredelse af cellulær kommunikation. Verden vil drage stor fordel af denne teknologi, men som de fleste ting følger den med tilknyttede negativer. Det er også op til dig at beslutte, om du vil omfavne den nye teknologi eller være imod den, men en ting er sikkert 5G vil snart være en del af danskernes hverdag.";

// Titles
String Title5G = "5G Den Nye Teknologi";
String TitleIoT = "Internet of Things"; 
String TitleConcerns = "Bekymringer Omkring 5G";
String TitleRadiation = "Radioaktiv Stråling";
String TitleConclusion = "Opsumering om 5G"; 

// Images
PImage backgroundImage, frontPageImage, finger;

int backgroundColour, screenY;
int YstartingValue = -4248;    // The starting Y-coordinate where to load the 2nd page
int passedTime;
int dotR = 10;
int spaceTextColour = #FFFFFF;
int normalTextColour = #000000;
int transparency;
int movingCircleR = 25;

boolean textHasBeenClicked = false;
boolean frontPage = true;
boolean on;

float r = 320;
float theta = 0;

void setup() {
  size(1920, 1080);
  backgroundImage = loadImage("P1CityV3.png");
  frontPageImage = loadImage("P1FrontPage.png");
  finger = loadImage("P1FrontPageFinger.png");
}


void draw() {  
  if (frontPage == true) {            // If condition set for the frontpage
    image(frontPageImage, 0, 0);      // Frontpage image

    float x = r * cos(theta);
    float y = r * sin(theta);

    transparency = 120;
    noStroke();
    fill(#FFFFFF, transparency);
    ellipse(x + width/2.221, y + height/2.02, movingCircleR, movingCircleR);

    theta += 0.04;

    image(finger, 0, 0);                                    // Overlay finger
  } else if (frontPage == false) {
    image(backgroundImage, 0, YstartingValue + screenY);    // The X, Y coordinates of the picture is set to 0, YstartingValue, thats beccause we want it to start from the buttom and then scroll up
  }

  println(mouseX, mouseY + screenY);

  if (frontPage == false) {    // Condition for the text to appear when frontPage == false
    int titleDotX [] = {1122, 1263, 523, 903, 712};  int titleDotY [] = {464, height - 2847, height - 3522, height - 1382, height - 4827};  
    int titlePosX [] = {1140, 1280, 543, 920, 732};  int titlePosY [] = {470, height - 2840, height - 3515, height - 1375, height - 4820};  
    int textPosX [] = {1115, 1250, 513, 890, 700};  int textPosY [] = {487, height - 2820, height - 3500, height - 1350, height - 4800};
    int textBoxSize [] = {400, 350, 300, 400, 600};
  
    textSize(22);
    fill(normalTextColour); 
    
    // 5G 
    ellipse(titleDotX[0], titleDotY[0] + screenY, dotR, dotR);                                                // Dot for 5G
    text(Title5G, titlePosX[0], titlePosY[0] + screenY);                                                      // Title for 5G 
    text(TextFor5G, textPosX[0], textPosY[0] + screenY, textBoxSize[0], height - 300 + screenY);              // Text for 5G and position

    // concerns
    ellipse(titleDotX[1], titleDotY[1] + screenY, dotR, dotR);                                                // Dot for 5G concerns
    text(TitleConcerns, titlePosX[1], titlePosY[1] + screenY);                                                // Title for 5G concerns
    text(TextForConcerns, textPosX[1], textPosY[1] + screenY, textBoxSize[1], height - 2600 + screenY);       // Text for 5G Concerns

    // radiation
    ellipse(titleDotX[2], titleDotY[2] + screenY, dotR, dotR);                                                // Dot for 5G radiation
    text(TitleRadiation, titlePosX[2], titlePosY[2] + screenY);                                               // Title for 5G radiation
    text(TextForRadiation, textPosX[2], textPosY[2] + screenY, textBoxSize[2], height - 3100 + screenY);      // Text for radiation

    // IoT
    ellipse(titleDotX[3], titleDotY[3] + screenY, dotR, dotR);                                                // Dot for IoT
    text(TitleIoT, titlePosX[3], titlePosY[3] + screenY);                                                     // Title for IoT 
    text(TextForIoT, textPosX[3], textPosY[3] + screenY, textBoxSize[3], height - 750 + screenY);             // Text for IoT

    // 5G conclusion
    fill(spaceTextColour);
    ellipse(titleDotX[4], titleDotY[4] + screenY, dotR, dotR);                                                // Dot for 5G conclusion
    text(TitleConclusion, titlePosX[4], titlePosY[4] + screenY);                                              //5G conclusion
    text(TextForConclusion, textPosX[4], textPosY[4] + screenY, textBoxSize[4], height - 4400 + screenY);     // Text for conclusion and position


    // HitBoxes for each "read more" button
    int hitBoxX [] = {1269, 1080, 1440, 720, 950};
    int hitBoxY [] = {615, height - 1213, height - 2724, height - 3404, height - 4548};
    
    int hitBoxSizeX = 150;
    int hitBoxSizeY = 40;
    transparency = 150;

    fill(0, transparency);
    rect(hitBoxX[0], hitBoxY[0] + screenY, hitBoxSizeX, hitBoxSizeY);    // Hitbox square for read more about 5G
    rect(hitBoxX[1], hitBoxY[1] + screenY, hitBoxSizeX, hitBoxSizeY);    // Hitbox square for read more about IoT
    rect(hitBoxX[2], hitBoxY[2] + screenY, hitBoxSizeX, hitBoxSizeY);    // Hitbox square for read more about concerns
    rect(hitBoxX[3], hitBoxY[3] + screenY, hitBoxSizeX, hitBoxSizeY);    // Hitbox square for read more about radiation
    rect(hitBoxX[4], hitBoxY[4] + screenY, hitBoxSizeX, hitBoxSizeY);    // Hitbox square for read more about conclusion


    // Animation for blinking dots for each "read more" title text
    int dotX [] = {1280, 1090, 1450, 730, 964};  
    int dotY [] = {633, height - 1197, height - 2707, height - 3387, height - 4527};
    
    if (frameCount% 1 == 0) {
      if (on) fill(#FF0808);
      else fill(#08FFA2);
      on = !on;

      ellipse(dotX[0], dotY[0] + screenY, dotR, dotR);    // Read more dot for 5G
      ellipse(dotX[1], dotY[1] + screenY, dotR, dotR);    // Read more dot for IoT
      ellipse(dotX[2], dotY[2] + screenY, dotR, dotR);    // Read more dot for concerns
      ellipse(dotX[3], dotY[3] + screenY, dotR, dotR);    // Read more dot for radiation
      ellipse(dotX[4], dotY[4] + screenY, dotR, dotR);    // Read more dot for conclusion
    }


    // Text and position for the "read more" titles, text and buttons
    int readMoreX [] = {1290, 1100, 1460, 740, 974};  int readMoreY [] = {640, height - 1190, height - 2700, height - 3380, height - 4520};
    int readMoreTX [] = {1290, 1100, 1460, 740, 984};  int readMoreTY [] = {640, height - 1190, height - 2700, height - 3380, height - 4520};
    
    if (textHasBeenClicked) {                                             // Display the extended informative stuff
      fill(normalTextColour);                                             // Colour for the displayed text
      text (ReadMore5G, readMoreX[0], readMoreY[0] + screenY);            // Read more about text for 5G
      text (ReadMoreIoT, readMoreX[1], readMoreY[1] + screenY);           // Read more about text for IoT
      text (ReadMoreConcerns, readMoreX[2], readMoreY[2] + screenY);      // Read more about text for concerns
      text (ReadMoreRadiation, readMoreX[3], readMoreY[3] + screenY);     // Read more about text for radiation

      fill(spaceTextColour);                                              // Colour for the displayed text
      text (ReadMoreConclusion, readMoreX[4], readMoreY[4] + screenY);    // Read more about text for conclusion
    } else {                                                              // Display the "læs mere" text
      fill(normalTextColour);                                             // Colour for the displayed text
      text(ReadMore, readMoreTX[0], readMoreTY[0] + screenY);             // Read more title for 5G
      text(ReadMore, readMoreTX[1], readMoreTY[1] + screenY);             // Read more title for IoT
      text(ReadMore, readMoreTX[2], readMoreTY[2] + screenY);             // Read more title for concerns
      text(ReadMore, readMoreTX[3], readMoreTY[3] + screenY);             // Read more title for radiation

      fill(spaceTextColour);                                              // Colour for the displayed text
      text(ReadMore, readMoreTX[4], readMoreTY[4] + screenY);             // Read more title for conclusion
    }
  }
}


// Event for what happens when the mouse wheel is scrolled
void mouseWheel(MouseEvent event) {
  if (frontPage == true) {
  } else if (frontPage == false) {
    float e = event.getCount();
    screenY = screenY + int(e) * 24;    // Defining the value screenY with the event.getCount(), additionally it also increases the scroll speed
    println(screenY);
  }

  int TopLimit = 4014;                  // Max scrolling height
  int BottomLimit = 0;                  // Minimum scrolling height

  if (screenY < BottomLimit) {          // Stating the boundaries for minimum scrolling point
    screenY = BottomLimit;
  } else if (screenY > TopLimit) {      // Stating the boundaries for maximum scrolling point
    screenY = TopLimit;
  }
}


void mouseClicked() {  
  frontPage = false;

  /*if (mouseX > width/2+100 && mouseX < width/2+100 + 200 && mouseY > height/2-500 && mouseY <height/2+500)
   textHasBeenClicked = ! textHasBeenClicked;*/
}
