class Enemies {
  PVector loc;
  PVector vel;
  int size;
  
  Enemies(float x, float y) {
    loc=new PVector(x, y);
    vel=new PVector(2, 0);
    size = 50;
  }
  void display() {
    fill(255,0,0);
    rect(loc.x, loc.y, size, size);
  }
  void move() {
    loc.add(vel);
  }
}

