boolean startState, charState, spiState, batState, superState, greenState, hawkState, gameState, levelState, endState; //control what screen is displayed
PImage grid; //background to start screen
Start s;
//the buttons on the character selection screen
CharScreen c1;
CharScreen c2;
CharScreen c3; 
CharScreen c4;
CharScreen c5;
IntroScreen i;
//location for the button on the character intro page
PVector loc;
int d;

int rows = 5; 
int cols = 5; 
int currentTime=0; 
int oldTime=0; 
int rand;
int lives;
int score;
ArrayList<Enemies> aliens = new ArrayList<Enemies>(); 
ArrayList<EnemyBullets> ebullets=new ArrayList<EnemyBullets>(); 
ArrayList<ShipBullets> sbullets=new ArrayList<ShipBullets>(); 
Ship S; 

GameOverScreen GO;

void setup() {
  size(displayWidth, displayHeight);
  colorMode(RGB);
  imageMode(CORNER);
  grid = loadImage("coolgrid.jpg");
  s = new Start();
  c1 = new CharScreen();
  c2 = new CharScreen();
  c3 = new CharScreen();
  c4 = new CharScreen();
  c5 = new CharScreen();
  i = new IntroScreen();
  loc = new PVector(200, 100);
  d=170;

  startState=true; //code starts out displaying start screen

  int(random(aliens.size())); 
  for (int x = 0; x < cols; x++) { 
    for (int y=0; y<rows;y++) { 
      aliens.add(new Enemies(70*x, 70*y));
    }
  }

  S=new Ship(width/2, height-100); 
  for (int i=0;i<sbullets.size();) { 
    sbullets.add(new ShipBullets(S.loc.x, S.loc.y));
  }
  lives=5;
  score=0;

  GO = new GameOverScreen();
}

void draw() {
  background(0);
  imageMode(CORNER);
  image(grid, 0, 0, displayWidth, displayHeight);
  if (startState==true) { //the start screen displays and a button to get to the character selection screen displays
    s.display();
    s.button();
  }

  if (charState==true) { //on the character screen each character's name displays and their symbol, which is a button 
    c1.display();
    textAlign(LEFT);
    fill(255);
    text("Spiderman", c1.loc1.x+200, c1.loc1.y);
    c2.display();
    fill(255);
    text("Batman", c2.loc2.x-300, c2.loc2.y);
    c3.display();
    fill(255);
    text("Superman", c3.loc3.x+200, c3.loc3.y); 
    c4.display();
    fill(255);
    text("Green Arrow", c4.loc4.x-300, c4.loc4.y); 
    c5.display();
    fill(255);
    text("Hawk Girl", c5.loc5.x+200, c5.loc5.y);
  }
  if (spiState==true) {
    i.displayspiderman(); //spiderman intro page
    button(); //button to go to game
    S.spi=true;
  }
  if (batState==true) {
    i.displaybatman(); //batman intro page
    button(); //button to go to game
S.bat=true;
  }
  if (superState==true) {
    i.displaysuperman(); //superman intro page
    button(); //button to go to game
S.sup=true;
  }
  if (greenState==true) {
    i.displaygreenarrow(); //green arrow intro page
    button(); //button to go to game
S.green=true;
  }
  if (hawkState==true) {
    i.displayhawkgirl(); //hawk girl intro page
    button(); //button to go to game
    S.hawk=true;
  }
  if (gameState==true) { //during the game...
    background(0);
    currentTime=millis();

    for (int i = 0; i < sbullets.size()-1; i++) { 
      ShipBullets bullet = (ShipBullets) sbullets.get(i); 
      bullet.shot(); 
      bullet.check(aliens);

      if (bullet.active == false) { 
        sbullets.remove(i);
        score++;
      }
    }

    for (int i=aliens.size()-1; i>0;i--) { 
      Enemies a = aliens.get(i); 
      a.display(S); 
      a.move();
    } 
    if (currentTime-oldTime>=2000) { 
      oldTime=currentTime;

      //GENERATE RANDOM NUMBER

      //ADD ONE BULLET
      rand= int(random(aliens.size()));

      for (int i=aliens.size()-1; i>0;i--) { 
        ebullets.add(new EnemyBullets(aliens.get(rand).loc.x, aliens.get(rand).loc.y));
      }
    } 
    for (int i = 0; i < ebullets.size()-1; i++) { 
      if (ebullets.get(i).active==false) { 
        ebullets=new ArrayList<EnemyBullets>();
        lives--;
      }
    } //DISPLAY AND MOVE ALL BULLETS IN BULLET ARRAYLIST

    for (EnemyBullets all: ebullets) { 
      all.display(); 
      all.shoot(); 
      all.check(S);
    } 
    for (Enemies a: aliens) { 
      if (a.loc.x + 50 > width || a.loc.x < 0) { 
        for (Enemies all: aliens) { 
          all.vel.x = -all.vel.x;
        }
      }
    } 
    S.display(); 
    S.move(); 
    S.shoot(sbullets);
    fill(0, 255, 0);
    textSize(15);
    textAlign(LEFT, TOP);
    text("Score:"+score, 50, 50);
    fill(255, 0, 0);
    text("Lives:"+lives, 50, 75);
  }
  if (lives==0) {
    GO.displayLose();
    gameState=false;
  }
  if (score==23) {
    GO.displayWin();
    gameState=false;
  }
}
void button() { //defines the button function that brings you from the character intro screen to the game
  colorMode(RGB);
  fill(140, 80, 230);
  ellipse(loc.x, loc.y, d, d);
  fill(0);
  textAlign(CENTER);
  text("Continue\nto Game", loc.x, loc.y);
}

void mousePressed() {
  if (dist(mouseX, mouseY, s.loc.x, s.loc.y) <= s.d/2) { //if you click the start button, you go to the character selection screen
    charState=true;
    startState=false;
  }
  if (dist(mouseX, mouseY, c1.loc1.x, c1.loc1.y) <= c1.d/2) { //if you click the spiderman logo on the character selection screen, you go to the spiderman intro page and the buttons move off the screen
    spiState=true;
    charState=false;
    startState=false;
    c1.loc1=new PVector(-width, -height);
    c2.loc2=new PVector(-width, -height);
    c3.loc3=new PVector(-width, -height);
    c4.loc4=new PVector(-width, -height);
    c5.loc5=new PVector(-width, -height);
  }
  else if (dist(mouseX, mouseY, c2.loc2.x, c2.loc2.y) <= c2.d/2) { //if you click the batman logo on the character selection screen, you go to the batman intro page and the buttons move off the screen
    batState=true; 
    charState=false;
    startState=false;
    c1.loc1=new PVector(-width, -height);
    c2.loc2=new PVector(-width, -height);
    c3.loc3=new PVector(-width, -height);
    c4.loc4=new PVector(-width, -height);
    c5.loc5=new PVector(-width, -height);
  }
  else if (dist(mouseX, mouseY, c3.loc3.x, c3.loc3.y) <= c3.d/2) { //if you click the superman logo on the character selection screen, you go to the superman intro page and the buttons move off the screen
    superState=true;
    charState=false;
    startState=false;
    c1.loc1=new PVector(-width, -height);
    c2.loc2=new PVector(-width, -height);
    c3.loc3=new PVector(-width, -height);
    c4.loc4=new PVector(-width, -height);
    c5.loc5=new PVector(-width, -height);
  }
  else if (dist(mouseX, mouseY, c4.loc4.x, c4.loc4.y) <= c4.d/2) { //if you click the green arrow logo on the character selection screen, you go to the green arrow intro page and the buttons move off the screen
    greenState=true;
    charState=false;
    startState=false;
    c1.loc1=new PVector(-width, -height);
    c2.loc2=new PVector(-width, -height);
    c3.loc3=new PVector(-width, -height);
    c4.loc4=new PVector(-width, -height);
    c5.loc5=new PVector(-width, -height);
  }
  else if (dist(mouseX, mouseY, c5.loc5.x, c5.loc5.y) <= c5.d/2) { //if you click the green arrow logo on the character selection screen, you go to the green arrow intro page and the buttons move off the screen
    hawkState=true;
    charState=false;
    startState=false;
    c1.loc1=new PVector(-width, -height);
    c2.loc2=new PVector(-width, -height);
    c3.loc3=new PVector(-width, -height);
    c4.loc4=new PVector(-width, -height);
    c5.loc5=new PVector(-width, -height);
  }
  if (dist(mouseX, mouseY, loc.x, loc.y)<=d/2) { //if you click the continue to game button on a character intro screen, you are brought to the game and all of the other character screens stop displaying
    gameState=true;
    spiState=false;
    batState=false;
    superState=false;
    greenState=false;
    hawkState=false;
    charState=false;
    startState=false;
  }
}
