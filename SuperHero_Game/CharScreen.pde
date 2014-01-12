class CharScreen {
  PVector loc;
  int d;
  int y;
  CharScreen() {
    loc = new PVector(width/2, y);
    d=50;
  }
  void display(int y) {
    background(100);
    ellipse(loc.x, y, d, d);
  }
}

