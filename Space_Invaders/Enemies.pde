class Enemies {
  PVector loc;
  PVector vel;
  int size;
  int choose;
  PImage goblin, joker, lex, archer, shock;

  Enemies(float x, float y) {
    loc=new PVector(x, y);
    vel=new PVector(2, 0);
    size = 60;
    goblin = loadImage("green goblin.png");
    joker =loadImage("joker.png");
    lex =loadImage("lex luthor.png");
    archer =loadImage("black archer.png");
    shock=loadImage("aftershock.png");
  }
  //DISPLAY WHICH ENEMY IMAGES BASED ON WHAT HERO IS CHOSEN
  void display(Ship s) {
    if (s.spi) {
      image(goblin, loc.x, loc.y, size, size);
    }
    else if (s.bat) {
      image(joker, loc.x, loc.y, size, size);
    }
    else if (s.sup) {
      image(lex, loc.x, loc.y, size, size);
    }
    else if (s.green) {
      image(archer, loc.x, loc.y, size, size);
    }
    else if (s.hawk) {
      image(shock, loc.x, loc.y, size, size);
    }
  }
  void move() {
    loc.add(vel);
  }
}

