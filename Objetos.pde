class Mieles {
  PImage mieles;
  float ox, oy, otam, ovel; 
  boolean objetObtenido;
  Mieles() {
    otam = 80; 
    ox =  width/2; 
    oy = height-otam/2;
    ovel = random(2, 4);
    objetObtenido = false;
    
  }
 

  Mieles(float zny) {
    otam = 50;
    ox = width/2;
    oy = zny; 
    ovel = random(2, 4);
    objetObtenido = false;
    mieles = loadImage("miel.png");
  }

  void dibujarObjetivo() {

    image(mieles, ox, oy, otam, otam*0.8); 
     
  }
  void obtenerObjeto() {
    if (ox>width+otam || objetObtenido == true ) { 
      ox =random(-width/2, -otam); 
      otam = 60;
      ovel = random(2, 4);
      objetObtenido = false;
    }
       ox+=ovel;
  }
  void obtener() {
    objetObtenido = true;
  }
}
