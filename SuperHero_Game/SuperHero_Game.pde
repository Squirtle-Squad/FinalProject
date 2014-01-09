<<<<<<< HEAD
int state, startState, charState, gameState, levelState, endState;
Start s;
void setup(){
  size(displayWidth,displayHeight);
  s = new Start();
}

void draw() {
  background(0);
  s.display();
  s.button();
  if (keyPressed) {
    if (keyCode=='c') {
      state=charState;
    }
  }
}
//everything else will be prompted by a button
=======
>>>>>>> origin/Superhero-Selection-Screen

