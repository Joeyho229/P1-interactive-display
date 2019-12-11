// P1 project, interactive poster

// text
String words = "Læs mere...";
String str2 = "5G er godt og det vil bidrage...";
String str35G = "Hurtigere Internet - Omkring 65 gange hurtigere end det du oplever med 4G. Utrolig Lav Latenstid - Tiden tager det tager for 2 enheder at kommunikere med hinanden - Med 5G latensen kan det nå helt ned på 1 millisekund fremfor 70 millisekunder med 4G.";
String str3IoT = "Fordi Internet of Things forbinder mere end 7 milliarder enheder verden over om 1.5 millioner i Danmark alene. Det vil derfor gøre vores verden mere digital intilligent og befolkningens hverdag endnu nemmere end den er i dag ved implementationen af 5G";
String str45Gcon = "Med nye teknologier opstår nye bekymringer, især når 4G allerede udsender stråling og 5G vil få strålingsniveauet til at stige. Dette har allerede fået mange til at spekulere om 5G er sikkert for mennesker. Mange mennesker er derfor allerede begyndt at udtrykke deres holdning og bekymring på internettet.";
String str5Rad = "Diskussionen om stråling er en stor del af korrektheden af implementationen af 5G. 5G medbringer højere strålingsniveau end 4G, omkring 25% mere end 4G. Denne stråling er dog ikke skadelig for mennesker i mindre doser";
String str6Con = "5G er en god mulighed for at bane bølgen for fremtiden og øge den eksponentielle udbredelse af cellulær kommunikation. Verden vil drage stor fordel af denne teknologi, men som de fleste ting følger den med tilknyttede negativer. Det er også op til dig at beslutte, om du vil omfavne den nye teknologi eller være imod den, men en ting er sikkert 5G vil snart være en del af danskernes hverdag.";

//titles for text
String str35Gtit = "5G Den Nye Teknologi";
String str4IoTtit = "Internet of Things"; 
String str55Gcontit = "Bekymringer Omkring 5G";
String str6Radtit = "Radioaktiv Stråling";
String str7Con = "Opsumering om 5G"; 

PImage backgroundImage, frontgroundImage;

int backgroundColour, screenY;
int TopLimit = 4014;
int BottomLimit = 0;
int YstartingValue = -4248;

boolean showImage = true;
boolean hitbox = true;
boolean textHasBeenClicked = false;

void setup() {
  size(1920, 1080);
  backgroundImage = loadImage("P1CityV3.png");
  frontgroundImage = loadImage("FrontPage5G.jpg");
}

void draw() {  
  if (showImage == true) {    // If condition set for the frontpage
    image(frontgroundImage, 0, 0);
  } else if (showImage == false) {
    image(backgroundImage, 0, YstartingValue + screenY);    // The X, Y coordinates of the picture is set to 0, YstartingValue, thats beccause we want it to start from the buttom and then scroll up
  }

  println(mouseX, mouseY);

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

  text(words, 407, 259 + screenY);    // ingenting
  
  text(words, 800, 285 + screenY);    // Der skal stå ting ved parabolen om IoT
  
  text(words, 660, 301 + screenY);    // Ting ved satelitten

  //text about 5G concerns

  //fill(255,0,0);
 
  textSize(15);
  fill(0);
  text(str45Gcon, width/2+320, height-2875+screenY, 300, height-2600+screenY);
  text(str5Rad, width/2+400, height-3500+screenY, 300, height-3100+screenY);
  text(str3IoT, width/2+150, height-1350+screenY, 300, height-750+screenY);
  text(str35G, width/2+100, height-500+screenY, 400, height-300+screenY);
  //textSize(45);
  fill(255);
  text(str6Con,width/2-200, height-4800+screenY, 400, height-4400+screenY);
  
  //Titles for text
  fill(0);
 
  text(str35Gtit, width/2+100, height-500+screenY);
  text(str4IoTtit, width/2+150, height-1375+screenY);
  text(str55Gcontit, width/2+320, height-2895 +screenY);
  text(str6Radtit, width/2+400, height-3515+screenY);
  
  fill(255);
  text(str7Con, width/2-200, height-4820+screenY);
}

void mouseWheel(MouseEvent event) {
  if (showImage == true) {
  } else if (showImage == false) {
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
  showImage = false;    // Condition for the frontpage to dissapear
}

void mousePressed () { 
  if (mouseX > width/2+100 && mouseX < width/2+100 + 200 &&
    mouseY > height/2-500 && mouseY <height/2+500)
    textHasBeenClicked = ! textHasBeenClicked;
}
