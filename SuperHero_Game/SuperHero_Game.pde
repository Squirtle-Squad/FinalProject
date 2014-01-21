
boolean startState, charState, spiState, batState, superState, greenState, hawkState, gameState, levelState, endState;
Start s;
CharScreen c1;
CharScreen c2;
CharScreen c3;
CharScreen c4;
CharScreen c5;
IntroScreen i;
int y1, y2, y3, y4, y5;
void setup() {
  size(displayWidth, displayHeight);
  s = new Start();
  c1 = new CharScreen();
  c2 = new CharScreen();
  c3 = new CharScreen();
  c4 = new CharScreen();
  c5 = new CharScreen();
  startState=true;
  i = new IntroScreen();
  y1=150;
  y2=300;
  y3=450;
  y4=600;
  y5=750;
}

void draw() {
  background(0);
  if (startState==true) {
    s.display();
    s.button();
  }
//  if (keyPressed) {
//    if (keyCode=='c') {
//      charState=true;
//    }
//  }
  if (charState==true) {
    c1.display(y1);
    textAlign(LEFT);
    fill(255);
    text("Spiderman", width/2+100, y1);
    c2.display(y2);
    fill(255);
    text("Batman", width/2+100, y2);
    c3.display(y3);
    fill(255);
    text("Superman", width/2+100, y3); 
    c4.display(y4);
    fill(255);
    text("Green Arrow", width/2+100, y4); 
    c5.display(y5);
    fill(255);
    text("Hawk Girl", width/2+100, y5);
  }
  if (spiState==true) {
    i.displayspiderman();
  }
  if (batState==true) {
    i.displaybatman();
  }
  if (superState==true) {
    i.displaysuperman();
  }
  if (greenState==true) {
    i.displaygreenarrow();
  }
  if (hawkState==true) {
    i.displayhawkgirl();
  }
}

void mousePressed() {
  if (dist(mouseX, mouseY, s.loc.x, s.loc.y) <= s.d/2) {
    charState=true;
    startState=false;
  }
  if (dist(mouseX, mouseY, c1.loc.x, y1) <= c1.d/2) {
    spiState=true;
    charState=false;
    startState=false;
    c1.loc=new PVector(-width, -height);
    c2.loc=new PVector(-width, -height);
    c3.loc=new PVector(-width, -height);
    c4.loc=new PVector(-width, -height);
    c5.loc=new PVector(-width, -height);
  }
  else if (dist(mouseX, mouseY, c2.loc.x, y2) <= c2.d/2) {
    batState=true; 
    //spiState=false;
    charState=false;
    startState=false;
    c1.loc=new PVector(-width, -height);
    c2.loc=new PVector(-width, -height);
    c3.loc=new PVector(-width, -height);
    c4.loc=new PVector(-width, -height);
    c5.loc=new PVector(-width, -height);
  }
  else if (dist(mouseX, mouseY, c3.loc.x, y3) <= c3.d/2) {
    superState=true;
    // batState=false; 
    // spiState=false;
    charState=false;
    startState=false;
    c1.loc=new PVector(-width, -height);
    c2.loc=new PVector(-width, -height);
    c3.loc=new PVector(-width, -height);
    c4.loc=new PVector(-width, -height);
    c5.loc=new PVector(-width, -height);
  }
  else if (dist(mouseX, mouseY, c4.loc.x, y4) <= c4.d/2) {
    greenState=true;
    charState=false;
    startState=false;
    c1.loc=new PVector(-width, -height);
    c2.loc=new PVector(-width, -height);
    c3.loc=new PVector(-width, -height);
    c4.loc=new PVector(-width, -height);
    c5.loc=new PVector(-width, -height);
  }
  else if (dist(mouseX, mouseY, c5.loc.x, y5) <= c5.d/2) {
    hawkState=true;
    charState=false;
    startState=false;
    c1.loc=new PVector(-width, -height);
    c2.loc=new PVector(-width, -height);
    c3.loc=new PVector(-width, -height);
    c4.loc=new PVector(-width, -height);
    c5.loc=new PVector(-width, -height);
  }
}

