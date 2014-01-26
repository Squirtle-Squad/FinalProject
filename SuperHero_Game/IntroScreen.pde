class IntroScreen {

  //spiderman intro page
  PVector vel, velb, loc, locb, locg, loch;
  PImage spiderman, spidermanBackground, batman, batmanbackground, superman, supermanbackground, greenarrow, greenarrowbackground, hawkgirl, hawkgirlbackground;
  int sx = 200;
  int sy = 350;

  IntroScreen() {
    loc = new PVector(500, -650);
    locb = new PVector(-50, displayHeight-450);
    locg = new PVector(displayWidth/2 - 100, displayHeight/2);
    loch = new PVector(displayWidth/2, displayHeight/2 + 500);
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
    image(spidermanBackground, 0, 0, displayWidth, displayHeight);
    ellipse(width/8,height/8,175,175);
    fill(255,32,41);
    textAlign(CENTER);
    text("Continue \n to game.",width/8,height/8-10);
    fill(255);
    image(spiderman, loc.x, loc.y);
    loc.add(vel);
    if (loc.y == 0) {
      vel = new PVector(0, 0);
    }
  }

  //batman intro
  void displaybatman() {
    image(batmanbackground, -50, 0, displayWidth + 100, displayHeight);
    ellipse(width/8,height/8,175,175);
    fill(255,32,41);
    textAlign(CENTER);
    text("Continue \n to game.",width/8,height/8-10);
    fill(255);
    image(batman, locb.x, locb.y, 400, 400);
    locb.add(velb);
    if (locb.x == width/2) {
      velb = new PVector(0, 0);
    }
  }
  //superman intro
  void displaysuperman() {
    image(supermanbackground, 0, 0, displayWidth, displayHeight);
    ellipse(width/8,height/8,175,175);
    fill(255,32,41);
    textAlign(CENTER);
    text("Continue \n to game.",width/8,height/8-10);
    fill(255);image(superman, width/2, loc.y, 450, 500);
    loc.add(vel);
    if (loc.y == 350) {
      vel = new PVector(0, 0);
    }
  }

  //greenarrow intro
  void displaygreenarrow() {
    image(greenarrowbackground, 0, 0, displayWidth, displayHeight);
    ellipse(width/8,height/8,175,175);
    fill(255,32,41);
    textAlign(CENTER);
    text("Continue \n to game.",width/8,height/8-10);
    fill(255);
    image(greenarrow, locg.x, locg.y, sx, sy);
    sx++;
    sy++;
    if (sx >= 300 && sy >= 450) {
      sx = 300;
      sy = 450;
    }
  }

  void displayhawkgirl() {
    image(hawkgirlbackground, 0, 0, displayWidth, displayHeight);
    ellipse(width/8,height/8,175,175);
    fill(255,32,41);
    textAlign(CENTER);
    text("Continue \n to game.",width/8,height/8-10);
    fill(255);
    image(hawkgirl, loch.x, loch.y, 250, 400);
    loch.sub(vel);
    if (loch.y == 450) {
      vel = new PVector(0, 0);
    }
  }
}
