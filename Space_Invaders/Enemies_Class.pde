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
  void check(ArrayList<ShipBullets> sb){
    for (int i = 0; i < sbullets.size(); i++) {
        ShipBullets b = (ShipBullets) sb.get(i);
   if( dist(loc.x,loc.y,b.loc.x,b.loc.y)<= size/2+b.d/2){
    sb.remove(i);
   }
  }
  }
}

