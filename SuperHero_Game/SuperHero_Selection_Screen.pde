class introScreen {

  //spiderman intro page
  PVector vel, loc;
  PImage spiderman, spidermanBackground;
  introScreen() {
    loc = new PVector(500, -650);
    vel = new PVector(0, 5);
    spiderman = loadImage("spiderman.png");
    spidermanBackground = loadImage("brickbackground.jpg");
  }

  void displayspiderman() {
    image(spidermanBackground, -50, 0, 1050, 800);
    textSize(30);
    text("Spiderman", 50, 50);

    image(spiderman, loc.x, loc.y);
    loc.add(vel);
    if (loc.y == 0) {
      vel = new PVector(0, 0);
    }
  }
  
}

