// P1 project, interactive poster

// Read more text
String ReadMore = "Læs mere...";
String ReadMore5G = "Det næste trin i evolutionen for mobil netværksteknologi er 5G, det vil revolutionere den måde mennesker og digitale enheder kommunikere med hinanden. Den generelle internet hastighed kan nå op på 65 gange hurtigere end det vi oplever i dag. Det er ikke hastigheden der ser betydelig forbedring, latency vil blive betydelig bedre, det er den tid det tager for to enheder at kommunikere med hinanden. Kort sagt betyder det at du kan downloade en HD film på under 30 sekunder, og vil køre selvkørende endnu mere intelligente.";
String ReadMoreIoT = "Fordi Internet of Things forbinder mere end 7 milliarder enheder verden over og 1.5 millioner i danmark alene. Det vil derfor gøre vores verden mere digital intelligent og befolknings hverdag endnu nemmere end den er i dag, ved implementationen af 5G..";
String ReadMoreConcerns = "Med nye teknologier opstår nye bekymringer, især når 4G allerede udsender stråling og 5G vil få strålingsniveauet til at stige. Dette har allerede fået mange til at spekulere om 5G er sikkert for mennesker. Mange mennesker er derfor allerede begyndt at udtrykke deres holdning og bekymring på Internettet.";
String ReadMoreRadiation = "Diskussionen om stråling er en stor del af korrektheden af implementationen af 5G, da 5G medbringer et højere strålingsniveau end 4G, omkring 25%. Strålingen fra 5G og 4G er ikke-ioniserende stråling, det kan derfor ikke interagere med kroppens atomer og molekyler og er derfor ikke skadelig for naturen og levende organismer.";

// Bullet point text
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
PImage backgroundImage, frontPageImage, finger, cloud, cloud1, cloud2, thinking, arrow, rotatedWArrow, rotatedBArrow;

int backgroundColour, screenY;
int YstartingValue = -4248;    // The starting Y-coordinate where to load the 2nd page
int passedTime;
int dotR = 10;
int spaceTextColour = #FFFFFF;
int normalTextColour = #000000;
int transparency;
int movingCircleR = 25;
int TopLimit = 4014;                  // Max scrolling height
int BottomLimit = 0;                  // Minimum scrolling height
int arrowX = 78;
int arrowY = 120;
int arrowSpeed = -3;
int arrowTop = 50;
int arrowMin = 120;

boolean textHasBeenClicked [] = {false, false, false, false};
boolean frontPage = true;
boolean on;

float r = 320;
float theta = 0;

int hitBoxX [] = {1269, 1080, 1440, 720, 950};
int hitBoxY [] = {615, -133, -1644, -2324, -3468};
int hitBoxSizeX = 150;
int hitBoxSizeY = 40;

void setup() {
  size(1920, 1080);
  backgroundImage = loadImage("P1CityV3.png");
  frontPageImage = loadImage("P1FrontPage.png");
  finger = loadImage("P1FrontPageFinger.png");
  cloud = loadImage("cloud.png");
  cloud1 = loadImage("cloud1.png");
  cloud2 = loadImage("cloud2.png");
  thinking = loadImage("thinking.png");
  arrow = loadImage("Arrow.png");
  rotatedWArrow = loadImage("rotatedWArrow.png");
  rotatedBArrow = loadImage("rotatedBArrow.png");
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


  println(mouseX, mouseY + screenY);                        // Testing tools 


  if (frontPage == false) {    // Condition for the text to appear when frontPage == false
    int titleDotX [] = {1122, 1263, 523, 903, 712};  
    int titleDotY [] = {464, -1767, -2442, -302, -3747};             // Title dot X, Y position
    int titlePosX [] = {1140, 1280, 543, 920, 732};  
    int titlePosY [] = {470, -1760, -2435, -295, -3740};             // Title X, Y position
    int textPosX [] = {1115, 1250, 513, 890, 700};   
    int textPosY [] = {487, -1740, -2420, -270, -3720};              // Text X, Y position
    int textBoxSizeX [] = {500, 350, 300, 400, 600}; 
    int textBoxSizeY [] = {980, -1520, -2020, 330, -3320};           // Text X, Y maximum

    textSize(22);
    fill(normalTextColour); 

    // 5G 
    ellipse(titleDotX[0], titleDotY[0] + screenY, dotR, dotR);                                                // Dot for 5G
    text(Title5G, titlePosX[0], titlePosY[0] + screenY);                                                      // Title for 5G 
    text(TextFor5G, textPosX[0], textPosY[0] + screenY, textBoxSizeX[0], textBoxSizeY[0] + screenY);          // Text for 5G and position

    // concerns
    ellipse(titleDotX[1], titleDotY[1] + screenY, dotR, dotR);                                                // Dot for 5G concerns
    text(TitleConcerns, titlePosX[1], titlePosY[1] + screenY);                                                // Title for 5G concerns
    text(TextForConcerns, textPosX[1], textPosY[1] + screenY, textBoxSizeX[1], textBoxSizeY[0] + screenY);    // Text for 5G Concerns

    // radiation
    ellipse(titleDotX[2], titleDotY[2] + screenY, dotR, dotR);                                                // Dot for 5G radiation
    text(TitleRadiation, titlePosX[2], titlePosY[2] + screenY);                                               // Title for 5G radiation
    text(TextForRadiation, textPosX[2], textPosY[2] + screenY, textBoxSizeX[2], textBoxSizeY[0] + screenY);   // Text for radiation

    // IoT
    ellipse(titleDotX[3], titleDotY[3] + screenY, dotR, dotR);                                                // Dot for IoT
    text(TitleIoT, titlePosX[3], titlePosY[3] + screenY);                                                     // Title for IoT 
    text(TextForIoT, textPosX[3], textPosY[3] + screenY, textBoxSizeX[3], textBoxSizeY[0] + screenY);         // Text for IoT

    // 5G conclusion
    fill(spaceTextColour);
    ellipse(titleDotX[4], titleDotY[4] + screenY, dotR, dotR);                                                // Dot for 5G conclusion
    text(TitleConclusion, titlePosX[4], titlePosY[4] + screenY);                                              // 5G conclusion
    text(TextForConclusion, textPosX[4], textPosY[4] + screenY, textBoxSizeX[4], textBoxSizeY[0] + screenY);  // Text for conclusion and position


    // HitBoxes for each "read more" button
    transparency = 0;

    fill(0, transparency);
    rect(hitBoxX[0], hitBoxY[0] + screenY, hitBoxSizeX, hitBoxSizeY);    // Hitbox square for read more about 5G
    rect(hitBoxX[1], hitBoxY[1] + screenY, hitBoxSizeX, hitBoxSizeY);    // Hitbox square for read more about IoT
    rect(hitBoxX[2], hitBoxY[2] + screenY, hitBoxSizeX, hitBoxSizeY);    // Hitbox square for read more about concerns
    rect(hitBoxX[3], hitBoxY[3] + screenY, hitBoxSizeX, hitBoxSizeY);    // Hitbox square for read more about radiation
    rect(hitBoxX[4], hitBoxY[4] + screenY, hitBoxSizeX, hitBoxSizeY);    // Hitbox square for read more about conclusion


    // Animation for blinking dots for each "read more" title text
    int titleArrowX [] = {1265, 1075, 1435, 715};  
    int titleArrowY [] = {632, -118, -1628, -2308};         // Read more title arrow X, Y position

    imageMode(CENTER);
    rotatedWArrow.resize(40, 20);
    rotatedBArrow.resize(40, 20);

    image(rotatedBArrow, titleArrowX[0], titleArrowY[0] + screenY);
    image(rotatedWArrow, titleArrowX[1], titleArrowY[1] + screenY);
    image(rotatedBArrow, titleArrowX[2], titleArrowY[2] + screenY);
    image(rotatedWArrow, titleArrowX[3], titleArrowY[3] + screenY);

    // Text and position for the "read more" titles, text and buttons
    int readMoreX [] = {1400, 1100, 1460, 740};  
    int readMoreY [] = {70, -110, -1620, -2300};           // Read more text X, Y position
    int readMoreTX [] = {1290, 1100, 1460, 740}; 
    int readMoreTY [] = {640, -110, -1620, -2300};         // Read more title X, Y position
    int pictureX [] = {readMoreX[0], readMoreX[1], readMoreX[2], readMoreX[3]};
    int pictureY [] = {readMoreY[0], readMoreY[1], readMoreY[2], readMoreY[3]};

    int offSetX [] = {-10, 75, 150, 0};  
    int offSetY [] = {280, 65, 90, 0};                     // Extra values for offsetting

    fill(normalTextColour);
    if (textHasBeenClicked[0]) {                                                                                            // Display the extended informative stuff
      thinking.resize(750, 750);                                                                                            // Thinking image size
      image(thinking, pictureX[0] + textBoxSizeX[0]/2, pictureY[0] + offSetY[0] + screenY);                                 // Thinking image position
      text (ReadMore5G, readMoreX[0], readMoreY[0] + screenY, textBoxSizeX[0], textBoxSizeY[0] + screenY);                  // Read more about text for 5G
    } else {                                                                                                                // Display the "læs mere" text
      text(ReadMore, readMoreTX[0], readMoreTY[0] + screenY);                                                               // Read more title for 5G
    }

    if (textHasBeenClicked[1]) {                                                                                            // Display the extended informative stuff
      cloud.resize(1200, 650);                                                                                              // Cloud image size
      image(cloud, pictureX[1] + offSetX[1] + textBoxSizeX[1]/2, pictureY[1] + offSetY[1] + screenY);                       // Cloud image position
      text (ReadMoreIoT, readMoreX[1], readMoreY[1] + screenY, textBoxSizeX[0], textBoxSizeY[0] + screenY);                 // Read more about text for IoT
    } else {                                                                                                                // Display the "læs mere" text
      text(ReadMore, readMoreTX[1], readMoreTY[1] + screenY);                                                               // Read more title for IoT
    }                                                              

    if (textHasBeenClicked[2]) {                                                                                            // Display the extended informative stuff
      cloud1.resize(800, 1600);                                                                                             // Cloud1 image size
      image(cloud1, pictureX[2] + offSetX[2], pictureY[2] + offSetY[2] + screenY);                                          // Cloud1 image position
      text (ReadMoreConcerns, readMoreX[2], readMoreY[2] + screenY, textBoxSizeX[0] - 100, textBoxSizeY[0] + screenY);      // Read more about text for concerns
    } else {                                                                                                                // Display the "læs mere" text
      text(ReadMore, readMoreTX[2], readMoreTY[2] + screenY);                                                               // Read more title for concerns
    }

    if (textHasBeenClicked[3]) {                                                                                            // Display the exentded informative stuff
      cloud2.resize(1200, 900);                                                                                             // Cloud2 image size
      image(cloud2, pictureX[3] + 220, pictureY[3] + 140 + screenY);                                                        // Cloud2 image position
      text (ReadMoreRadiation, readMoreX[3], readMoreY[3] + screenY, textBoxSizeX[0], textBoxSizeY[0] + screenY);           // Read more about text for radiation
    } else {                                                                                                                // Display the "læs mere" text
      text(ReadMore, readMoreTX[3], readMoreTY[3] + screenY);                                                               // Read more title for radiation
    }

    if ( screenY < TopLimit ) {                                                                 // Condition set for when the arrow to dissapear
      arrowY = arrowY + arrowSpeed;                                                             // Adding arrowSpeed into the variable arrowY
      arrow.resize(60, 100);                                                                    // Resizing the image
      image(arrow, arrowX, arrowY);                                                             // Loading the arrow image with X, Y coordinates
      if ( arrowY < arrowTop || arrowY > arrowMin ) {                                           // Condition set for what the arrow should do when it reaches the required target
        arrowSpeed *= -1;                                                                       // arrowSpeed gets incremented by -1 when the code is run
      }
    }
  }

  imageMode(CORNER);
}



// Event for what happens when the mouse wheel is scrolled
void mouseWheel(MouseEvent event) {
  if (frontPage == true) {
  } else if (frontPage == false) {
    float e = event.getCount();
    screenY = screenY + int(e) * 24;    // Defining the value screenY with the event.getCount(), additionally it also increases the scroll speed
    println(screenY);
  }

  if (screenY < BottomLimit) {          // Stating the boundaries for minimum scrolling point
    screenY = BottomLimit;
  } else if (screenY > TopLimit) {      // Stating the boundaries for maximum scrolling point
    screenY = TopLimit;
  }
}


void mouseClicked() {  
  frontPage = false;
  if (mouseX > hitBoxX[0] && mouseX < hitBoxX[0] + hitBoxSizeX && mouseY > hitBoxY[0] + screenY && mouseY < hitBoxY[0] + hitBoxSizeY + screenY) {    // Hitbox criteria for 5G
    textHasBeenClicked[0] = ! textHasBeenClicked[0];
    textHasBeenClicked[1] = false;
    textHasBeenClicked[2] = false;
    textHasBeenClicked[3] = false;
  }

  if (mouseX > hitBoxX[1] && mouseX < hitBoxX[1] + hitBoxSizeX && mouseY > hitBoxY[1] + screenY && mouseY < hitBoxY[1] + hitBoxSizeY + screenY) {    // Hitbox criteria for IoT
    textHasBeenClicked[1] = ! textHasBeenClicked[1];
    textHasBeenClicked[0] = false;
    textHasBeenClicked[2] = false;
    textHasBeenClicked[3] = false;
  }

  if (mouseX > hitBoxX[2] && mouseX < hitBoxX[2] + hitBoxSizeX && mouseY > hitBoxY[2] + screenY && mouseY < hitBoxY[2] + hitBoxSizeY + screenY) {    // Hitbox criteria for concerns
    textHasBeenClicked[2] = ! textHasBeenClicked[2];
    textHasBeenClicked[0] = false;
    textHasBeenClicked[1] = false;
    textHasBeenClicked[3] = false;
  }

  if (mouseX > hitBoxX[3] && mouseX < hitBoxX[3] + hitBoxSizeX && mouseY > hitBoxY[3] + screenY && mouseY < hitBoxY[3] + hitBoxSizeY + screenY) {    // Hitbox criteria for radiation
    textHasBeenClicked[3] = ! textHasBeenClicked[3];
    textHasBeenClicked[0] = false;
    textHasBeenClicked[1] = false;
    textHasBeenClicked[2] = false;
  }
}
