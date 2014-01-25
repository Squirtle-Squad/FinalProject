class EnemyBullets {
  PVector loc;
  PVector vel;
  int d;
  int currentTime=0;
  int oldTime=0;
  int lives;
  EnemyBullets(float x, float y) {
    loc=new PVector(x, y);
    vel=new PVector(0, 1); 
    d= 20;
    lives=3;
  }
  void display() {
    ellipse(loc.x, loc.y, d, d);
  }
  void shoot() {
    loc.add(vel);
  }
}
