
boolean startState, charState, spiState, batState, superState, greenState, hawkState, gameState, levelState, endState;
PImage grid;
Start s;
CharScreen c1;
CharScreen c2;
CharScreen c3;
CharScreen c4;
CharScreen c5;
IntroScreen i;
int y1, y2, y3, y4, y5, x1, x2;
void setup() {
  size(displayWidth, displayHeight);
  grid = loadImage("coolgrid.jpg");
  s = new Start();
  c1 = new CharScreen();
  c2 = new CharScreen();
  c3 = new CharScreen();
  c4 = new CharScreen();
  c5 = new CharScreen();
  startState=true;
  i = new IntroScreen();
  x1 =100;
  x2 = width - 100;
  y1=125;
  y2=275;
  y3=425;
  y4=575;
  y5=725;
}

void draw() {

  background(0);

  image(grid, 0, 0, displayWidth, displayHeight);
  if (startState==true) {
    s.display();
    s.button();
  }
  //  if (keyPressed) {
  //    if (keyCode=='c') {
  //      charState=true;
  //    }
  //  }
  if (charState==true) {
    c1.display(x1, y1);
    textAlign(LEFT);
    fill(255);
    text("Spiderman", width/2-500, y1 + 35);
    c2.display(x2, y2);
    fill(255);
    text("Batman", width/2+450, y2 + 30);
    c3.display(x1, y3);
    fill(255);
    text("Superman", width/2-500, y3 + 40); 
    c4.display(x2, y4);
    fill(255);
    text("Green Arrow", width/2+400, y4 + 30); 
    c5.display(x1, y5);
    fill(255);
    text("Hawk Girl", width/2-500, y5 + 30);
  }
  if (spiState==true) {
    i.displayspiderman();
  }
  if (batState==true) {
    i.displaybatman();
  }
  if (superState==true) {
    i.displaysuperman();
  }
  if (greenState==true) {
    i.displaygreenarrow();
  }
  if (hawkState==true) {
    i.displayhawkgirl();
  }
}

void mousePressed() {
  if (dist(mouseX, mouseY, s.loc.x, s.loc.y) <= s.d/2) {
    charState=true;
    startState=false;
  }
  if (dist(mouseX, mouseY, x1, y1) <= c1.d/2) {
    spiState=true;
    charState=false;
    startState=false;
    c1.loc=new PVector(-width, -height);
    c2.loc=new PVector(-width, -height);
    c3.loc=new PVector(-width, -height);
    c4.loc=new PVector(-width, -height);
    c5.loc=new PVector(-width, -height);
  }
  else if (dist(mouseX, mouseY, x2, y2) <= c2.d/2) {
    batState=true; 
    //spiState=false;
    charState=false;
    startState=false;
    c1.loc=new PVector(-width, -height);
    c2.loc=new PVector(-width, -height);
    c3.loc=new PVector(-width, -height);
    c4.loc=new PVector(-width, -height);
    c5.loc=new PVector(-width, -height);
  }
  else if (dist(mouseX, mouseY, x1, y3) <= c3.d/2) {
    superState=true;
    // batState=false; 
    // spiState=false;
    charState=false;
    startState=false;
    c1.loc=new PVector(-width, -height);
    c2.loc=new PVector(-width, -height);
    c3.loc=new PVector(-width, -height);
    c4.loc=new PVector(-width, -height);
    c5.loc=new PVector(-width, -height);
  }
  else if (dist(mouseX, mouseY, x2, y4) <= c4.d/2) {
    greenState=true;
    charState=false;
    startState=false;
    c1.loc=new PVector(-width, -height);
    c2.loc=new PVector(-width, -height);
    c3.loc=new PVector(-width, -height);
    c4.loc=new PVector(-width, -height);
    c5.loc=new PVector(-width, -height);
  }
  else if (dist(mouseX, mouseY, x1, y5) <= c5.d/2) {
    hawkState=true;
    charState=false;
    startState=false;
    c1.loc=new PVector(-width, -height);
    c2.loc=new PVector(-width, -height);
    c3.loc=new PVector(-width, -height);
    c4.loc=new PVector(-width, -height);
    c5.loc=new PVector(-width, -height);
  }
}

