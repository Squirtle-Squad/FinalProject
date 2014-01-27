class IntroScreen {

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
    image(spidermanBackground, -50, 0, 1050, 800); //background for spiderman intro
    textSize(30);
    text("Spiderman", 50, 50);

    image(spiderman, loc.x, loc.y);  //image of spiderman
    loc.add(vel);   //allows spiderman to appear from top of screen
    if (loc.y == 0) {
      vel = new PVector(0, 0);  //makes spiderman's vertical velocity equal zero stopping his downward motion at a certain point
    }
  }

  //batman intro
  void displaybatman() {
    image(batmanbackground, -50, 0, displayWidth + 100, displayHeight);  //background for batman intro
    image(batman, locb.x, locb.y-300, 400, 400);
    locb.add(velb);  //allows batman to enter from the left of the screen
    if (locb.x >= width/2) {
      velb = new PVector(0, 0); //makes batman's horizontal velocity equal zero so that he stops at certain point on screen
    }
  }

  //superman intro
  void displaysuperman() {
    image(supermanbackground, 0, 0, width, height); // background for superman intro
    image(superman, width/2, loc.y, 500, 500);
    loc.add(vel);  //allows superman to appear from top of screen
    if (loc.y == 350) {
      vel = new PVector(0, 0); //stops superman's downward motion at a certain point
    }
  }

  //greenarrow intro
  void displaygreenarrow() {
    image(greenarrowbackground, 0, 0, width, height); //background for greenarrow's intro
    image(greenarrow, locg.x, locg.y, sx, sy);
    sx++;
    sy++;
    if (sx >= 300 && sy >= 450) { //stops greenarrow's increasing size when specified size is met.
      sx = 300;
      sy = 450;
    }
  }

  void displayhawkgirl() {
    image(hawkgirlbackground, 0, 0, width, height); //background for hawkgirl's intro
    image(hawkgirl, loc.x + 100, loc.y, 200, 350);
    loc.add(vel);  //gives hawkgirl a downward velocity
    if (loc.y == 350) { //stop hawkgirl's vertical velocity at specified point.
      vel = new PVector(0, 0);
    }
  }
}

