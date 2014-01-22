class Ship {
  PVector loc;
  int size;
  color c;
  boolean canshoot;
  int delay;
  int lives;
  Ship(float x, float y){
    loc=new PVector(x,y);
    size=50;
    c= color(0,255,0);
    canshoot= true;
    delay=0;
    lives=3;
  }
  void display(){
   fill(c);
  rect(loc.x,loc.y,size,size);  
  }
  void move(){
   if (keyPressed){
     if (keyCode==LEFT){
     loc.x-=2;
     }
     if (keyCode==RIGHT){
       loc.x+=2;
     }
  }
}
void shoot(ArrayList<ShipBullets> s){
  if(keyPressed&& key== ' ' && canshoot){
    s.add(new ShipBullets(loc.x,loc.y));
    canshoot= false;
    delay=0;
   
  }
  delay++;
  if (delay>=50){
    canshoot=true; 
   }
}
void check(ArrayList<EnemyBullets> ebullets){
  for (int i=0; i<aliens.size();i++) {
      EnemyBullets eb= (EnemyBullets) ebullets.get(i);
 if(dist(loc.x,loc.y,eb.loc.x,eb.loc.y)<=size/2+eb.d/2){
  ebullets.remove(i);
  lives--;
 }
  } 
}
}

