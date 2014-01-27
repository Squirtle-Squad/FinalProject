class Ship {
  PVector loc;
  int size;
  boolean canshoot, spi, bat, sup, green, hawk;
  int delay;
   PImage spiderman, batman,  superman, greenarrow,  hawkgirl;
  Ship(float x, float y) {
    loc=new PVector(x, y);
    size=50;
    canshoot= true;
    spi=false;
    bat= false;
    sup=false;
    green=false;
    hawk=false;
    delay=0;
          spiderman = loadImage("spiderman.png");
  
  
    batman = loadImage("batman.png");
  
    superman = loadImage("superman.png");
  
    greenarrow = loadImage("GreenArrow.png");
  
    hawkgirl = loadImage("hawkgirl.png");
  

  }
  void display() {
   if(spi){
    image(spiderman,loc.x,loc.y,size,size);
   }
  else if(bat){
    image(batman,loc.x,loc.y,size,size);
   }
  else if(sup){
    image(superman,loc.x,loc.y,size,size);
   }
  else if(green){
    image(greenarrow,loc.x,loc.y,size,size);
   }
  else if(hawk){
    image(hawkgirl,loc.x,loc.y,size,size);
   } 
  }
  void move() {
    if (keyPressed) {
      if (keyCode==LEFT) {
        loc.x-=10;
      }
      if (keyCode==RIGHT) {
        loc.x+=10;
      }
    }
  }
  void shoot(ArrayList<ShipBullets> s) {
    if (keyPressed&& key== ' ' && canshoot) {
      s.add(new ShipBullets(loc.x, loc.y));
      canshoot= false;
      delay=0;
    }
    delay++;
    if (delay>=50) {
      canshoot=true;
    }
  }

}

