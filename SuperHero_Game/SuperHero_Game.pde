
int state, startState, charState, gameState, levelState, endState;
Start s;
CharScreen c1;
CharScreen c2;
CharScreen c3;
CharScreen c4;
CharScreen c5;
void setup() {
  size(displayWidth, displayHeight);
  s = new Start();
  c1 = new CharScreen();
  c2 = new CharScreen();
  c3 = new CharScreen();
  c4 = new CharScreen();
  c5 = new CharScreen();
  state=startState;
}

void draw() {
  background(0);
  if (state==startState) {
    s.display();
    s.button();
  }
  if (keyPressed) {
    if (keyCode=='c') {
      // state=charState;
    }
  }
  if (state==charState) {
    c1.display(100);
    c2.display(200);
    c3.display(300);
    c4.display(400);
    c5.display(500);
  }
}
//everything else will be prompted by a button
//if(state==charState){
//  
//}
void mousePressed() {
  if (dist(mouseX, mouseY, s.loc.x, s.loc.y) <= s.d/2) {
    state=charState;
  }
  else {
    state=startState;
  }
}

