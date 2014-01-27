class Ship {
  PVector loc;
  int size;
  boolean canshoot;
  int delay;
 // int lives;
  Ship(float x, float y) {
    loc=new PVector(x, y);
    size=50;
    canshoot= true;
    delay=0;
   // lives=3;
  }
  void display() {
    fill(0, 255, 0);
    rect(loc.x, loc.y, size, size);
  }
  void move() {
    if (keyPressed) {
      if (keyCode==LEFT) {
        loc.x-=10;
      }
      if (keyCode==RIGHT) {
        loc.x+=10;
      }
    }
  }
  void shoot(ArrayList<ShipBullets> s) {
    if (keyPressed&& key== ' ' && canshoot) {
      s.add(new ShipBullets(loc.x, loc.y));
      canshoot= false;
      delay=0;
    }
    delay++;
    if (delay>=50) {
      canshoot=true;
    }
  }

/*  void check(ArrayList<EnemyBullets> ebullet) {
    for (int i=0; i<aliens.size();i++) {
      EnemyBullets eb= (EnemyBullets) ebullets.get(i);
      if (dist(loc.x, loc.y, eb.loc.x, eb.loc.y)<=size/2+eb.d/2) {
        ebullets.remove(i);
        lives--;
        loc.x=size/2;
      }
    }
  }*/
}

