class upgradeShop{ 
  PImage marvelBG;
  PVector exitLoc;
  int d;
  
  upgradeShop(){
    marvelBG = loadImage("MarvelComic.jpg");
    exitLoc = new PVector(width-60,height-60);
    d = 70;
  }
  
  void displayShop(){
    pushMatrix();
    rectMode(CORNER);
    colorMode(HSB,360,100,100);
    tint(200,100);
    image(marvelBG, 0,0, width,height);
    strokeWeight(3);
    fill(359,78,72,150);
    rect(-3,-3,width+6,height/5);
    rect(-3,height+3,width+6,-height/5);
    fill(360,150);
    textSize(70);
    textAlign(CENTER);
    fill(0,75);
    text("UpgradeShop",width/2,height/7.5-5);
    fill(360,150);
    text("UpgradeShop",width/2+5,height/7.5);
    popMatrix();
  }
  
  void displayUpgrades(){
  }
  
  void exitButton(){
    pushMatrix();
    colorMode(HSB,360,100,100);
    fill(55,78,82,100);
    strokeWeight(2);
    ellipse(exitLoc.x,exitLoc.y, d,d);
    fill(360);
    textSize(30);
    text("Exit",exitLoc.x,exitLoc.y+10);
    popMatrix();
  }
}
