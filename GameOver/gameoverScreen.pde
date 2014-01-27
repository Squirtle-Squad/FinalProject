class gameoverScreen {
  PImage superHeroes, villains;

  gameoverScreen() {
    superHeroes = loadImage("Superheroes.jpg");
    villains = loadImage("Villains.jpg");
    colorMode(HSB, 360, 100, 100);
  }

  void display() {
    if (lives == 0) {
      background(0);
      rectMode(CORNER);
      fill(0,7,38, 75);
      strokeWeight(3);
      rect(0, -5, 205, height+5);
      rect(width, -5, -205, height+5);
      imageMode(CENTER);
      image(villains, width/2,height/2);
      textMode(CENTER);
      textSize(30);
      text('You Lose', width/2, 100);
    }
    if ( enemies == 0) {
      pushMatrix();
      background(360);
      imageMode(CENTER);
      image(superHeroes, width/2, height/2);
      rectMode(CORNER);
      fill(0, 74, 62, 75);
      strokeWeight(3);
      rect(0, -5, 205, height+5);
      rect(width, -5, -205, height+5);
      fill(random(360), 100, 100);
      textAlign(CENTER);
      textSize(100);
      text("Congratulations!", width/2, height/6-50);
      fill(0, 75);
      text("Congratulations!", width/2-5, height/6-45);
      fill(0);
      textSize(30);
      text("You have stopped the invasion!", width/2, height/6);
      popMatrix();
    }
  }
}

