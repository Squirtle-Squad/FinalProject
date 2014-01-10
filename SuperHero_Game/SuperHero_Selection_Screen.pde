class introScreen {

  //spiderman intro page
  PVector vel, velb, loc, locb;
  PImage spiderman, spidermanBackground, batman, batmanbackground, superman, supermanbackground, greenarrow, greenarrowbackground;
  ;

  introScreen() {
    loc = new PVector(500, -650);
    locb = new PVector(-50, height-50);
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
  }
}

//spiderman intro
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

//batman intro
void displaybatman() {
  image(batmanbackground, -50, 0, 1200, height);
  image(batman, locb.x, locb.y, 400, 400);
  locb.add(velb);
  if (locb.x == width/2) {
    velb = new PVector(0, 0);
  }

  //superman intro
  void displaysuperman() {
    image(supermanbackground, 0, 0, width, height);
    image(superman, width/2, loc.y, 500, 500);
    loc.add(vel);
    if (loc.y == 350) {
      vel = new PVector(0, 0);
    }
  }

  //greenarrow intro
  void displaygreenarrow() {
  //need to add the code here!!!  
  }

  void displayfirestar() {
  }
}

