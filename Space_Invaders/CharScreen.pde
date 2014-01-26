class CharScreen {
  PImage batbutton, spibutton, gabutton, habutton, supbutton;
  PVector loc;
  int d;
  int y, x;
  CharScreen() {
    batbutton = loadImage("batman logo.png"); 
    spibutton = loadImage("spidermanlogo.png");
    gabutton = loadImage("gabutton.png");
    habutton = loadImage("habutton.png");
    supbutton = loadImage("supbutton.png");

    loc = new PVector(x, y);
    d=50;
  }
  void display(int x, int y) {
    fill(30, 240, 240);
    ellipse(x, y, d, d);
    image(batbutton, width/2 - 10, 250, 150, 100);
    image(spibutton, width/2, 125, 125, 85);
    image(supbutton, width/2, 400, 125, 100 );
    image(gabutton, width/2 + 10, 550, 115, 100);
    image(habutton, width/2 + 10, 725, 100,125);
  }
}

