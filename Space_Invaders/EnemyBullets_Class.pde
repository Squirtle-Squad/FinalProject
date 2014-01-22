   class EnemyBullets {
  PVector loc;
  PVector vel;
  int d;
  int currentTime=0;
int oldTime=0;
  EnemyBullets(float x, float y){
   loc=new PVector(x,y);
  vel=new PVector(0,1); 
  d= 20;
  }
  void display(){
   ellipse(loc.x,loc.y,d,d); 
  }
  void shoot(){
   loc.add(vel);
  }
  void check(Ship ship){
    currentTime=millis();
    if(dist(loc.x,loc.y,ship.loc.x,ship.loc.y)<=d/2+ship.size/2){
      
      if(currentTime-oldTime<=3000){
      ship.c= color(0);
      }
      else{
       ship.c=color(0,255,0); 
      }
      }
  }
}

