class Ship {
  PVector loc;
  int size;
  Ship(float x, float y) {
    loc=new PVector(x, y);
    size=50;
  }
  void display() {
    fill(0, 255, 0);
    rect(loc.x, loc.y, size, size);
  }
  void move() {
    if (keyPressed) {
      if (keyCode==LEFT) {
        loc.x-=2;
      }
      if (keyCode==RIGHT) {
        loc.x+=2;
      }
    }
  }
}

