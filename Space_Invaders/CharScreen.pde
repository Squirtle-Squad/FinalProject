class CharScreen {
  PImage batbutton, spibutton, gabutton, habutton, supbutton;
  PVector loc1, loc2, loc3, loc4, loc5;
  int d;
  // int y, x;
  CharScreen() {
    imageMode(CENTER);
    batbutton = loadImage("batman logo.png"); 
    spibutton = loadImage("spidermanlogo.png");
    gabutton = loadImage("gabutton.png");
    habutton = loadImage("habutton.png");
    supbutton = loadImage("supbutton.png");

    loc1 = new PVector(300, 125);
    loc2 = new PVector(width-300, 275);
    loc3 = new PVector(300, 425);
    loc4 = new PVector(width-300, 575);
    loc5 = new PVector(300, 725);
    d=150;
  }
  void display() {
    //  fill(30, 240, 240);
    // ellipse(x, y, d, d);
    imageMode(CENTER);
    image(spibutton, loc1.x, loc1.y, d, d);
    image(batbutton, loc2.x, loc2.y, d, d);
    image(supbutton, loc3.x, loc3.y, d, d );
    image(gabutton, loc4.x, loc4.y, d, d);
    image(habutton, loc5.x, loc5.y, d, d);
  }
}

