class Bullets {
  PVector loc;
  PVector vel;
  int d;
  Bullets(float x, float y){
   loc=new PVector(x,y);
  vel=new PVector(0,-1); 
  d= 20;
  }
  void display(){
   ellipse(loc.x,loc.y,d,d); 
  }
  void shoot(){
   loc.add(vel);
  }
}

