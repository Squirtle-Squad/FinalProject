class Ship {
  PVector loc;
  PVector vel;
  int size
  Ship(float x, float y){
    loc=new PVector(x,y);
    vel(1,0);
    size(4);
  }
  void display(){
   fill(0,255,0);
  triangle(loc.x,loc.y,loc.x+size,loc.y,loc.x+size/2,loc.y size);  
  }
  void move(){
   loc.add(vel); 
  }
}

