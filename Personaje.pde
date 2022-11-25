class Abeja {
  PImage abeja;
  int px, py, ptam; 
  boolean abejaMuerta;
  Abeja() {
    ptam = 60;
    px = width/2;
    py = height-ptam/2;
    abeja = loadImage("abeja.png");
    abejaMuerta = false;
  }

  void dibujarAbeja() {
    image(abeja,px,py,ptam/2,ptam);
  }
  void moverAbeja(int tecla) { 
    if (tecla==RIGHT && px<width-ptam/4) { 
      px+=3;
    }
    if (tecla==LEFT && px>ptam/4) {
      px-=3;
    }
    if (tecla==DOWN && py<height-ptam/2) { 
      py+=3;
    }
    if (tecla==UP && py>ptam/4) { 
      py-=3;
    }
  }
  
  void reiniciarAbeja() {
    if (abejaMuerta = true ) { 
     ptam = 60;
    px = width/2;
    py = height-ptam/2;
    }
  }
}
