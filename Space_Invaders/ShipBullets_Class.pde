class ShipBullets {
  PVector loc;
  PVector vel;
  int d;
  boolean active;
  ShipBullets(float x, float y) {
    loc=new PVector(x, y);
    vel=new PVector(0, -1); 
    d= 10;
    active = true;
  }
  void shot() {
    ellipse(loc.x, loc.y, d, d);    
    loc.add(vel);
  }
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

