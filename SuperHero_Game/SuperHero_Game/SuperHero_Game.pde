
boolean startState, charState, spiState, batState, superState, greenState, hawkState, gameState, levelState, endState;
Start s;
CharScreen c1;
CharScreen c2;
CharScreen c3;
CharScreen c4;
CharScreen c5;
IntroScreen i;
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
    c1.display(150);
    c2.display(300);
    c3.display(450);
    c4.display(600);
    c5.display(750);
  }
  if (spiState==true) {
    i.displayspiderman();
  }
}

void mousePressed() {
  if (dist(mouseX, mouseY, s.loc.x, s.loc.y) <= s.d/2) {
    charState=true;
    startState=false;
  }
  else if (dist(mouseX, mouseY, c1.loc.x, c1.loc.y) <= c1.d/2) {
    spiState=true;
    charState=false;
    startState=false;
  }
  else if (dist(mouseX, mouseY, c2.loc.x, c2.loc.y) <= c2.d/2) {
    batState=true; 
    spiState=false;
    charState=false;
    startState=false;
  }
  else if (dist(mouseX, mouseY, c3.loc.x, c3.loc.y) <= c3.d/2) {
    superState=true;
    batState=false; 
    spiState=false;
    charState=false;
    startState=false;
  }
}

