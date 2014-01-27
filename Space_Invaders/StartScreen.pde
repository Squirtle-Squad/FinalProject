class Start {
  PVector loc = new PVector(width/2, height-200);
  int d = 200;
  void display() { //makes the game instructions display when the method is run
    colorMode(RGB);
    textAlign(CENTER);
    fill(255);
    textSize(50);
    text("The Space Invaders have returned\nIt is your job to defend the planet Earth\n...as a Superhero!\nUse the arrow keys to move\nand the spacebar to shoot.", width/2, 200);
  }
  void button() { //makes a continue button appear when the method is run with a loation loc and diameter d
    colorMode(RGB);
    fill(0, 255, 40);
    ellipse(loc.x, loc.y, d, d);
    textSize(30);
    fill(0);
    text("Continue", width/2, height-190);
  }
}

