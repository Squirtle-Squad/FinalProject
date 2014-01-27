class Start {
  PVector loc = new PVector(width/2, height-200);
  int d = 200;
  void display() {
    colorMode(RGB);
    textAlign(CENTER);
    fill(255);
    textSize(50);
    text("The Space Invaders have returned\nIt is your job to defend the planet Earth\n...as a Superhero!", width/2, 200);
  }
  void button() {
    colorMode(RGB);
    fill(0, 255, 40);
    ellipse(loc.x, loc.y, d, d);
    textSize(30);
    fill(0);
    text("Continue", width/2, height-190);
  }
}

