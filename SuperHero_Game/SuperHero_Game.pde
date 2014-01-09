PVector vel, loc;
PImage spiderman;
void setup() {
  size(1000, 800);
  spiderman = loadImage("spiderman.png");
  loc = new PVector(500, -650);
  vel = new PVector(0, 5);
}
void draw() {
  background(0);
  image(spiderman, loc.x, loc.y);
  loc.add(vel);
  if (loc.y == 0) {
    vel = new PVector(0, 0);
  }
}

