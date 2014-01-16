int rows = 5;
int cols = 5;
int currentTime=0;
int oldTime=0;
int rand;
ArrayList<Enemies> aliens = new ArrayList<Enemies>();
ArrayList<EnemyBullets> ebullets=new ArrayList<EnemyBullets>();
Ship S;
ShipBullets sbullets;
void setup() {
  size(700, 700);
  int(random(aliens.size()));
  for (int x = 0; x < cols; x++) {
    for (int y=0; y<rows;y++) {
      aliens.add(new Enemies(70*x, 70*y));
    }
  }

  S=new Ship(width/2, height-50);
  sbullets=new ShipBullets(S.loc.x, S.loc.y);
}

void draw() {
  background(0);
  currentTime=millis();

  S.display();
  S.move();


  for (int i=0; i<aliens.size();i++) {
    Enemies a = aliens.get(i);
    a.display();
    a.move();
  }
  if (currentTime-oldTime>=2000) {
    oldTime=currentTime;

    //GENERATE RANDOM NUMBER

    //ADD ONE BULLET
    rand= int(random(aliens.size()));

    for (int i=0; i<aliens.size();i++) {
      ebullets.add(new EnemyBullets(aliens.get(rand).loc.x, aliens.get(rand).loc.y));
    }
  }

  //DISPLAY AND MOVE ALL BULLETS IN BULLET ARRAYLIST
  for (EnemyBullets all: ebullets) {
    all.display();
    all.shoot();
  }
  for (Enemies a: aliens) {
    if (a.loc.x + 50 > width || a.loc.x < 0) {
      for (Enemies all: aliens) {
        all.vel.x = -all.vel.x;
      }
    }
  }
}
void keyReleased() {
  if (key== ' ' ) {
    sbullets.display();
    sbullets.shoot();
  }
}

