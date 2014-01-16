
boolean startState, charState, introState1, introState2, introState3, introState4, introState5, gameState, levelState, endState;
Start s;
CharScreen c1;
CharScreen c2;
CharScreen c3;
CharScreen c4;
CharScreen c5;
IntroScreen I1;
IntroScreen I2;
IntroScreen I3;
IntroScreen I4;
IntroScreen I5;
void setup() {
  size(displayWidth, displayHeight);
  s = new Start();
  c1 = new CharScreen();
  c2 = new CharScreen();
  c3 = new CharScreen();
  c4 = new CharScreen();
  c5 = new CharScreen();
  I1 = new IntroScreen();
  I2 = new IntroScreen();
  I3 = new IntroScreen();
  I4 = new IntroScreen();
  I5 = new IntroScreen();

  startState=true;
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
  if (introState1==true) {
    I1.displayspiderman();
  }
  if (introState2==true) {
    I2.displaybatman();
  }
    if (introState3==true) {
    I3.displaysuperman();
   if (introState3==true) {
    I3.displaysuperman();
   }
//    if (introState3==true) {
//    I3.displaysuperman();

void mousePressed() {
  if (dist(mouseX, mouseY, s.loc.x, s.loc.y) <= s.d/2) {
    charState=true;
    startState=false;
  }
  if (dist(mouseX, mouseY, c1.loc.x, 150) <= c1.d/2) {
    startState=false;
    charState=false;
    introState1=true;
  }
  if (dist(mouseX, mouseY, c1.loc.x, 300) <= c1.d/2) {
    startState=false;
    charState=false;
    introState2=true;
  }
  if (dist(mouseX, mouseY, c1.loc.x, 300) <= c1.d/2) {
    startState=false;
    charState=false;
    introState3=true;
  }
}
//  else {
//    startState=true;
//  }

