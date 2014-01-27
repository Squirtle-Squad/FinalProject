class CharScreen {
  PImage batbutton, spibutton, gabutton, habutton, supbutton;
  PVector loc1, loc2, loc3, loc4, loc5; //makes a location variable for each button
  int d;
  CharScreen() {
    imageMode(CENTER);
    //loads imaages of each of the characters' logos
    batbutton = loadImage("batman logo.png"); 
    spibutton = loadImage("spidermanlogo.png");
    gabutton = loadImage("gabutton.png");
    habutton = loadImage("habutton.png");
    supbutton = loadImage("supbutton.png");

    loc1 = new PVector(350, 125);
    loc2 = new PVector(width-350, 275);
    loc3 = new PVector(350, 425);
    loc4 = new PVector(width-350, 575);
    loc5 = new PVector(350, 725);
    d=150;
  }
  void display() { //makes the five buttons display when the method is run
    imageMode(CENTER); //alignes the image with the center and d is used as the height and width so they can be treated as circles to tell if the mouse is on the button
    image(spibutton, loc1.x, loc1.y, d, d);
    image(batbutton, loc2.x, loc2.y, d, d);
    image(supbutton, loc3.x, loc3.y, d, d );
    image(gabutton, loc4.x, loc4.y, d, d);
    image(habutton, loc5.x, loc5.y, d, d);
  }
}

