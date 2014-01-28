class EnemyBullets { 
  PVector loc; 
  PVector vel; 
  int d; 
  int currentTime=0; 
  int oldTime=0; 
  boolean active; 
  EnemyBullets(float x, float y) { 
    loc=new PVector(x, y); 
    vel=new PVector(0, 10); 
    d= 20; 
    active=true;
  } 
  //ONLY SHOW THE ELLIPSE WHEN ENEMYBULLETS ARE ACTIVE
  void display() { 
    if (active) { 
      fill(255,0,0);
      ellipse(loc.x, loc.y, d, d);
    }
  } 
  void shoot() { 
    loc.add(vel);
  } 
  void check(Ship s) { 
    if (dist(loc.x, loc.y, s.loc.x, s.loc.y)<=d/2+s.size/2) { 
      s.loc.x=s.size/2; 
      active=false; //IF ENEMYBULLET HITS SHIP THEN NOT ACTIVE
    }
  }
}

