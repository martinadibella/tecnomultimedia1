class Sapos {
  PImage sapo;
  float dx, dy, dtam, dvel;
  boolean sapoR;
  Sapos() {
    dtam = 80; 
    dx =  width/2; 
    dy = height-dtam/2;
    dvel = random(5, 7);
    sapoR = false;
    
  }
 

  Sapos (float zdy) {
    dtam = 50;
    dx = width/2;
    dy = zdy;
    dvel = random(5, 7);
    sapoR = false;
    sapo = loadImage("sapo.png");
  }

  void dibujarSapos() {

    image(sapo, dx, dy, dtam, dtam*0.8); 
     
  }
  void moverSapos() {
    if (dx>width+dtam ) {
      dx =random(-width/2, -dtam); 
      dtam = 60;
      dvel = random(5, 7);
      sapoR = false;
    }
    dx+=dvel;
  }
  void reset() {
    sapoR = true;
  }
}
