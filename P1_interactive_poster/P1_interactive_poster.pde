// P1 project, interactive poster

// Text
String ReadMore = "Læs mere...";
String ReadMore5G = "5G er godt og det vil bidrage...";
String TextFor5G = "Hurtigere Internet - Omkring 65 gange hurtigere end det du oplever med 4G. Utrolig Lav Latenstid - Tiden tager det tager for 2 enheder at kommunikere med hinanden - Med 5G latensen kan det nå helt ned på 1 millisekund fremfor 70 millisekunder med 4G.";
String TextForIoT = "Fordi Internet of Things forbinder mere end 7 milliarder enheder verden over om 1.5 millioner i Danmark alene. Det vil derfor gøre vores verden mere digital intilligent og befolkningens hverdag endnu nemmere end den er i dag ved implementationen af 5G";
String TextForConcerns = "Med nye teknologier opstår nye bekymringer, især når 4G allerede udsender stråling og 5G vil få strålingsniveauet til at stige. Dette har allerede fået mange til at spekulere om 5G er sikkert for mennesker. Mange mennesker er derfor allerede begyndt at udtrykke deres holdning og bekymring på internettet.";
String TextForRadiation = "Diskussionen om stråling er en stor del af korrektheden af implementationen af 5G. 5G medbringer højere strålingsniveau end 4G, omkring 25% mere end 4G. Denne stråling er dog ikke skadelig for mennesker i mindre doser";
String TextForConclusion = "5G er en god mulighed for at bane bølgen for fremtiden og øge den eksponentielle udbredelse af cellulær kommunikation. Verden vil drage stor fordel af denne teknologi, men som de fleste ting følger den med tilknyttede negativer. Det er også op til dig at beslutte, om du vil omfavne den nye teknologi eller være imod den, men en ting er sikkert 5G vil snart være en del af danskernes hverdag.";

// Titles
String Title5G = "5G Den Nye Teknologi";
String TitleIoT = "Internet of Things"; 
String TitleConcerns = "Bekymringer Omkring 5G";
String TitleRadiation = "Radioaktiv Stråling";
String TitleConclusion = "Opsumering om 5G"; 

// Images
PImage backgroundImage, frontgroundImage;

int backgroundColour, screenY;
int TopLimit = 4014;
int BottomLimit = 0;
int YstartingValue = -4248;    // The Y-coordinate where to load the 2nd page

boolean textHasBeenClicked = false;
boolean frontPage = true;


void setup() {
  size(1920, 1080);
  backgroundImage = loadImage("P1CityV3.png");
  frontgroundImage = loadImage("P1FrontPage.png");
}


void draw() {  
  if (frontPage == true) {    // If condition set for the frontpage
    image(frontgroundImage, 0, 0);
  } else if (frontPage == false) {
    image(backgroundImage, 0, YstartingValue + screenY);    // The X, Y coordinates of the picture is set to 0, YstartingValue, thats beccause we want it to start from the buttom and then scroll up
  }
  

  
  println(mouseX , mouseY);

  if (frontPage == false) {    // Condition for the text to appear when showText == true
    textSize(20);
    fill(#000000); 
    text(TitleConcerns, width/2+320, height-2895 +screenY);    // Title for 5G concerns
    text(TextForConcerns, width/2+250, height-2875+screenY, 350, height-2600+screenY);    // Text for 5G Concerns

    text(TitleRadiation, width/2+400, height-3515+screenY);    // Title for 5G radition
    text(TextForRadiation, width/2+400, height-3500+screenY, 300, height-3100+screenY);    // Text for radiation

    text(TitleIoT, width/2+150, height-1375+screenY);    // Title for IoT 
    text(TextForIoT, width/2+150, height-1350+screenY, 300, height-750+screenY);    // Text for IoT

    text(Title5G, width/2+100, height-500+screenY); //5G title pos
    text(TextFor5G, width/2+100, height-500+screenY, 400, height-300+screenY);    // Text for 5G and position

    fill(#FFFFFF);
    text(TitleConclusion, width/2-200, height-4820+screenY); //5G concern
    text(TextForConclusion, width/2-200, height-4800+screenY, 400, height-4400+screenY); // Text for conclusion and position

    if (textHasBeenClicked) {
      //display text 2 - New information box
      fill(0);
      text (ReadMore5G, width/2+100, height/2+20+screenY);
    } else {
      //display text 1 - Old box
      fill(0);
      //textSize(32);
      text(ReadMore, width/2+100, height/2+20+screenY);
    }
  }
}


void mouseWheel(MouseEvent event) {
  if (frontPage == true) {
  } else if (frontPage == false) {
    float e = event.getCount();
    screenY = screenY + int(e) * 18;    // Defining the value screenY with the event.getCount(), additionally it also increases the scroll speed
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
  if (mouseX > width/2+100 && mouseX < width/2+100 + 200 && mouseY > height/2-500 && mouseY <height/2+500)
    textHasBeenClicked = ! textHasBeenClicked;
}
