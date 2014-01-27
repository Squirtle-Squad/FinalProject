class IntroScreen {

  //spiderman intro page
  PVector vel, velb, loc, locb, locg;
  PImage spiderman, spidermanBackground, batman, batmanbackground, superman, supermanbackground, greenarrow, greenarrowbackground, hawkgirl, hawkgirlbackground;
  int sx = 200;
  int sy = 350;

  IntroScreen() {
    loc = new PVector(500, -650);
    locb = new PVector(-50, height-50);
    locg = new PVector(width/2 - 100, height/2);
    vel = new PVector(0, 5);
    velb = new PVector(5, 0);
    imageMode(CORNER);
    spiderman = loadImage("spiderman.png");
    spidermanBackground = loadImage("brickbackground.jpg");
    batman = loadImage("batman.png");
    batmanbackground = loadImage("backgroundbatman.jpg");
    superman = loadImage("superman.png");
    supermanbackground = loadImage("sunset sky.jpg");
    greenarrow = loadImage("GreenArrow.png");
    greenarrowbackground = loadImage("greenarrowbackground.jpg");
    hawkgirl = loadImage("hawkgirl.png");
    hawkgirlbackground = loadImage("hawkgirlbackground.jpg");
  }


  //spiderman intro
  void displayspiderman() {
    imageMode(CORNER);
    image(spidermanBackground, -50, 0, displayWidth +100, displayHeight);
    textSize(30);
    text("Spiderman", 50, 50);

    image(spiderman, loc.x, loc.y);
    loc.add(vel);
    if (loc.y == 0) {
      vel = new PVector(0, 0);
    }
  }

  //batman intro
  void displaybatman() {
    imageMode(CORNER);
    image(batmanbackground, -50, 0, displayWidth + 100, displayHeight);
    image(batman, locb.x, locb.y-300, 400, 400);
    locb.add(velb);
    if (locb.x >= width/2) {
      velb = new PVector(0, 0);
    }
  }
  //superman intro
  void displaysuperman() {
    imageMode(CORNER);
    image(supermanbackground, 0, 0, width, height);
    image(superman, width/2, loc.y, 500, 500);
    loc.add(vel);
    if (loc.y == 350) {
      vel = new PVector(0, 0);
    }
  }

  //greenarrow intro
  void displaygreenarrow() {
    imageMode(CORNER);
    image(greenarrowbackground, 0, 0, width, height);
    image(greenarrow, locg.x, locg.y, sx, sy);
    sx++;
    sy++;
    if (sx >= 300 && sy >= 450) {
      sx = 300;
      sy = 450;
    }
  }

  void displayhawkgirl() {
    imageMode(CORNER);
    image(hawkgirlbackground, 0, 0, width, height);
    image(hawkgirl, loc.x + 100, loc.y, 200, 350);
    loc.add(vel);
    if (loc.y == 350) {
      vel = new PVector(0, 0);
    }
  }
}

