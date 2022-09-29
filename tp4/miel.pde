PImage miel1;
PImage miel2;
PImage miel3;
PImage miel4;
PImage miel5;
PImage miel6;
PImage miel7;

class miel {

  float x, y, tamanio;
  PImage miel;

  miel() {
    miel1= loadImage("miel.png");
    miel2= loadImage("miel.png");
    miel3= loadImage("miel.png");
    miel4= loadImage("miel.png");
    miel5= loadImage("miel.png");
    miel6= loadImage("miel.png");
    miel7= loadImage("miel.png");
  }
  void subirimagenes() {
    image (miel1, 50, 280, 50, 50);
    image (miel2, 110, 100, 50, 50);
    image (miel3, 200, 300, 50, 50);
    image (miel4, 550, 100, 50, 50);
    image (miel5, 350, 40, 50, 50);
    image (miel6, 420, 250, 50, 50);
    image (miel7, 600, 300, 50, 50);
  }
}
