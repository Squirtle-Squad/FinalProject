class gameoverScreen {
  PImage superHeroes, villains;

  gameoverScreen() {
    superHeroes = loadImage("Superheroes.jpg");
    villains = loadImage("Villains.jpg");
    colorMode(HSB,360,100,100);
  }

  void display() {
    if (lives == 0) {
      background(0);
      image(villains, 0, 0);
    }
    if ( enemies == 0) {
      background(360);
      imageMode(CENTER);
      image(superHeroes, width/2, height/2);
      rectMode(CORNER);
      fill(0,74,62,75);
      strokeWeight(3);
      rect(0,-5,215,height+5);
      rect(width,-5,-215,height+5);
      fill(0);
      textAlign(CENTER);
      textSize(100);
      text("You Win!", width/2,height/6);\
      textSize(50);
      text("You have stopped the invasion! 
    }
  }
}

