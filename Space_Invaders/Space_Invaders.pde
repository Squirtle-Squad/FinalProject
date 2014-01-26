int rows = 5; 
int cols = 5; 
int currentTime=0; 
int oldTime=0; 
int rand;
int lives;
int score;
ArrayList<Enemies> aliens = new ArrayList<Enemies>(); 
ArrayList<EnemyBullets> ebullets=new ArrayList<EnemyBullets>(); 
ArrayList<ShipBullets> sbullets=new ArrayList<ShipBullets>(); 
Ship S; 
void setup() { 
  size(700, 500); 
  int(random(aliens.size())); 
  for (int x = 0; x < cols; x++) { 
    for (int y=0; y<rows;y++) { 
      aliens.add(new Enemies(70*x, 70*y));
    }
  }

  S=new Ship(width/2, height-50); 
  for (int i=0;i<sbullets.size();) { 
    sbullets.add(new ShipBullets(S.loc.x, S.loc.y));
  }
  lives=5;
  score=0;
}

void draw() { 
  background(0); 
  currentTime=millis();

  for (int i = 0; i < sbullets.size()-1; i++) { 
    ShipBullets bullet = (ShipBullets) sbullets.get(i); 
    bullet.shot(); 
    bullet.check(aliens);

    if (bullet.active == false) { 
      sbullets.remove(i);
      score++;
    }
  }

  for (int i=aliens.size()-1; i>0;i--) { 
    Enemies a = aliens.get(i); 
    a.display(); 
    a.move();
  } 
  if (currentTime-oldTime>=2000) { 
    oldTime=currentTime;

    //GENERATE RANDOM NUMBER

    //ADD ONE BULLET
    rand= int(random(aliens.size()));

    for (int i=aliens.size()-1; i>0;i--) { 
      ebullets.add(new EnemyBullets(aliens.get(rand).loc.x, aliens.get(rand).loc.y));
    }
  } 
  for (int i = 0; i < ebullets.size()-1; i++) { 
    if (ebullets.get(i).active==false) { 
      ebullets=new ArrayList<EnemyBullets>();
      lives--;
    }
  } //DISPLAY AND MOVE ALL BULLETS IN BULLET ARRAYLIST

  for (EnemyBullets all: ebullets) { 
    all.display(); 
    all.shoot(); 
    all.check(S);
  } 
  for (Enemies a: aliens) { 
    if (a.loc.x + 50 > width || a.loc.x < 0) { 
      for (Enemies all: aliens) { 
        all.vel.x = -all.vel.x; 
        
      }
    }
  } 
  S.display(); 
  S.move(); 
  S.shoot(sbullets);
    fill(0, 255, 0);
    textSize(15);
    textAlign(LEFT, TOP);
    text("Score:"+score, 50, 50);
    fill(255, 0, 0);
    text("Lives:"+lives, 50, 75);  
}

