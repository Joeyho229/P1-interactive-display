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
int TopLimit = 4014;
int BottomLimit = 0;
int YstartingValue = -4248;    // The Y-coordinate where to load the 2nd page
int passedTime;
int dotR = 10;

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
  if (frontPage == true) {    // If condition set for the frontpage
    image(frontPageImage, 0, 0);    // Frontpage image

    float x = r * cos(theta);
    float y = r * sin(theta);

    noStroke();
    fill(#FFFFFF, 120);
    ellipse(x + width/2.221, y + height/2.02, 25, 25);

    theta += 0.04;

    image(finger, 0, 0);    // Overlay finger
  } else if (frontPage == false) {
    image(backgroundImage, 0, YstartingValue + screenY);    // The X, Y coordinates of the picture is set to 0, YstartingValue, thats beccause we want it to start from the buttom and then scroll up
  }

  println(mouseX, mouseY + screenY);

  if (frontPage == false) {    // Condition for the text to appear when showText == true
    textSize(22);
    fill(#000000); 

    ellipse(1122, 464 + screenY, dotR, dotR);    // Dot for 5G
    text(Title5G, 1140, 470 + screenY);    // Title for 5G 
    text(TextFor5G, 1115, 487 + screenY, 400, height - 300 + screenY);    // Text for 5G and position

    ellipse(1263, height - 2847 + screenY, dotR, dotR);    // Dot for 5G concerns
    text(TitleConcerns, 1280, height - 2840 + screenY);    // Title for 5G concerns
    text(TextForConcerns, 1250, height - 2820 + screenY, 350, height - 2600 + screenY);    // Text for 5G Concerns

    ellipse(523, height - 3522 + screenY, dotR, dotR);    // Dot for 5G radiation
    text(TitleRadiation, 543, height-3515+screenY);    // Title for 5G radiation
    text(TextForRadiation, 513, height-3500+screenY, 300, height-3100+screenY);    // Text for radiation

    ellipse(903, height - 1382 + screenY, dotR, dotR);    // Dot for IoT
    text(TitleIoT, 920, height - 1375 + screenY);    // Title for IoT 
    text(TextForIoT, 890, height - 1350 + screenY, 400, height-750+screenY);    // Text for IoT

    fill(#FFFFFF);
    ellipse(712, height - 4827 + screenY, dotR, dotR);    // Dot for 5G conclusion
    text(TitleConclusion, 732, height - 4820 + screenY); //5G conclusion
    text(TextForConclusion, 700, height - 4800 + screenY, 600, height - 4400 + screenY); // Text for conclusion and position


    if (frameCount% 1 == 0) {
      if (on) fill(#FF0808);
      else fill(#08FFA2);
      on = !on;

      ellipse(1280, 633 + screenY, dotR, dotR);
      ellipse(1090, height - 1197 + screenY, dotR, dotR);
      ellipse(1450, height - 2707 + screenY, dotR, dotR);
      ellipse(730, height - 3387 + screenY, dotR, dotR);
      ellipse(964, height - 4527 + screenY, dotR, dotR);
    }


    if (textHasBeenClicked) {    // Display the extended informative stuff
      fill(0);
      text (ReadMore5G, 1290, 640 + screenY);
      text (ReadMoreIoT, 1100, height - 1190 + screenY);
      text (ReadMoreConcerns, 1460, height - 2700 + screenY);
      text (ReadMoreRadiation, 740, height - 3380 + screenY);

      fill(#FFFFFF);
      text (ReadMoreConclusion, 974, height - 4520 + screenY);
    } else {    // Display the "læs mere" text
      fill(0);
      text(ReadMore, 1290, 640 + screenY);    // Read more title for 5G
      text(ReadMore, 1100, height - 1190 + screenY);    // Read more title for IoT
      text(ReadMore, 1460, height - 2700 + screenY);    // Read more title for concerns
      text(ReadMore, 740, height - 3380 + screenY);    // Read more title for radiation

      fill(#FFFFFF);
      text(ReadMore, 984, height - 4520 + screenY);    // Read more title for conclusion
    }
  }
}


void mouseWheel(MouseEvent event) {
  if (frontPage == true) {
  } else if (frontPage == false) {
    float e = event.getCount();
    screenY = screenY + int(e) * 24;    // Defining the value screenY with the event.getCount(), additionally it also increases the scroll speed
    println(screenY);
  }

  if (screenY < BottomLimit) {    // Stating the boundaries for minimum scrolling point
    screenY = BottomLimit;
  } else if (screenY > TopLimit) {    // Stating the boundaries for maximum scrolling point
    screenY = TopLimit;
  }
}


void mouseClicked() {  
  frontPage = false;

  /*if (mouseX > width/2+100 && mouseX < width/2+100 + 200 && mouseY > height/2-500 && mouseY <height/2+500)
    textHasBeenClicked = ! textHasBeenClicked;*/
}
