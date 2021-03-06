class ShipBullets {
  PVector loc;
  PVector vel;
  int d;
  boolean active;
  ShipBullets(float x, float y) {
    loc=new PVector(x, y);
    vel=new PVector(0, -10); 
    d= 10;
    active = true;
  }
  void shot() {
    colorMode(RGB);
    fill(255, 255, 255);
    ellipse(loc.x, loc.y, d, d);    
    loc.add(vel);
  }
  //REMOVE ENEMIES AND BECOME INACTIVE WHEN HIT AN ENEMY
  void check(ArrayList<Enemies> e) {
    for (int i = 0; i < e.size(); i++) {
      Enemies a = (Enemies) e.get(i);
      if ( dist(loc.x, loc.y, a.loc.x, a.loc.y)<= d/2+a.size/2) { 
        e.remove(i);
        active = false;
      }
    }
  }
}

