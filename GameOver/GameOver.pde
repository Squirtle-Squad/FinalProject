int lives, enemies;
gameoverScreen Go;
void setup(){
  size(displayWidth, displayHeight);
  Go = new gameoverScreen();
}

void draw(){
  lives = 0;
  Go.display();
}
