
//int state, startState, charState, gameState, levelState, endState;
Start s;
CharScreen c;
void setup() {
  size(displayWidth, displayHeight);
  s = new Start();
  c = new CharScreen();
}

void draw() {
  background(0);
  s.display();
  s.button();
  if (keyPressed) {
    if (keyCode=='c') {
      // state=charState;
    }
  }
}
//everything else will be prompted by a button
//if(state==charState){
//  
//}
void mousePressed() {
  if (dist(mouseX, mouseY, s.loc.x, s.loc.y) <= s.d/2) {
    c.display();
  }
}

