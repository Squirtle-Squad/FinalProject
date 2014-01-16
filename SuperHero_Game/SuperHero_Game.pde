
boolean startState, charState, introState ,gameState, levelState, endState;
Start s;
CharScreen c1;
CharScreen c2;
CharScreen c3;
CharScreen c4;
CharScreen c5;
IntroScreen I1;
void setup() {
  size(displayWidth, displayHeight);
  s = new Start();
  c1 = new CharScreen();
  c2 = new CharScreen();
  c3 = new CharScreen();
  c4 = new CharScreen();
  c5 = new CharScreen();
  I1 = new IntroScreen();
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
//  if(introState==true){
//    I1.display();
//  }
}

void mousePressed() {
  if (dist(mouseX, mouseY, s.loc.x, s.loc.y) <= s.d/2) {
    charState=true;
    startState=false;
  }
  if (dist(mouseX, mouseY, c1.loc.x, c1.loc.y) <= c1.d/2) {
      background(0);
      startState=false;
      charState=false;
//      I1.display();
      
  }
}
  //  else {
  //    startState=true;
  //  }


