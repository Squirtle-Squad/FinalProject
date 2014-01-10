int rows = 5;
int cols = 5;
float rightside;
float leftside;
ArrayList<Enemies> aliens = new ArrayList<Enemies>();

void setup() {
  size(700, 700);
  for (int x = 0; x < cols; x++) {
    for (int y=0; y<rows;y++) {
      aliens.add(new Enemies(70*x, 70*y));
      
    }
  }
  leftside=aliens.get(0).loc.x;
  rightside=aliens.get(cols-1).loc.x+aliens.get(cols-1).size;
}

void draw() {
  background(0);

  for (int i=0; i<aliens.size();i++) {
    Enemies a = aliens.get(i);
    a.display();
    a.move();
    
  }
  if (rightside>width||leftside<0) {
      for(Enemies a: aliens){
       a.vel.x*=-1; 
      }
    }
}

