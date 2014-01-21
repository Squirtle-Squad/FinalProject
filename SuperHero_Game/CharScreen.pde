class CharScreen {
  PImage batbutton, spibutton;
  PVector loc;
  int d;
  int y, x;
  CharScreen() {
    batbutton = loadImage("batman logo.png"); 
    spibutton = loadImage("spidermanlogo.png");
    loc = new PVector(x, y);
    d=50;
  }
  void display(int x, int y) {
    fill(30, 240, 240);
    rect(x, y, d, d);
    image(batbutton, width/2 - 10, 250, 150, 100);
    image(spibutton, width/2, 125, 125, 85);
    }
  }

