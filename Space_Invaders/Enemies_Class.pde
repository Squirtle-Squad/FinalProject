class Enemies {
  PVector loc;
  PVector vel;
  int size;
  int ypos;
  int ychange;

  Enemies(float x, float y) {
    loc=new PVector(x, y);
    vel=new PVector(2, 0);
    size = 50;
    ypos=0;
    ychange=1;
  }
  void display() {
    fill(255, 0, 0);
    rect(loc.x, loc.y, size, size);
  }
  void move() {
    loc.add(vel);
    if (ypos==1) {
      loc.y=loc.y+size/2;
    }
    if (ypos==2) {
      loc.y=loc.y+size; 
      ychange*=-1;
    }
  }
}

