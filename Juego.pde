class Juego {
  PFont fuente;
  PImage fondo;
  PImage inicio;
  PImage ganaste;
  PImage perdiste;
  String estado = "portada";
  Abeja p;
  Mieles o;
  Sapos sapo;
  int vidas;
  int objetos;
  int time;
  boolean agarrarOb;
  Mieles [] objetivos = new Mieles[5];
  Sapos [] sapos = new Sapos[5];

  Juego() {
    fuente = loadFont("ArcadeClassic-48.vlw");
    vidas = 5;
    objetos = 0;
    time = 3000;
    fondo = loadImage("fondo.png");
    inicio = loadImage("inicio.png");
    ganaste = loadImage("GANASTE.png");
    perdiste = loadImage ("PERDISTE.png");
    p = new Abeja();
    sapo = new Sapos();
    textSize(30);
    for (int i=0; i<sapos.length; i++) {
      sapos[i] = new Sapos(60+i*(height-150)/4);
    }
    
    for (int i=0; i<objetivos.length; i++) {
      objetivos[i] = new Mieles(20+i*(height-150)/4);
    }
  }
 
  void dibujarJuego() {
    //---------------------------------------------------------------
     if(estado.equals("portada")){
      image(inicio,0,0);
      textFont(fuente);
      textSize(25);
      textAlign(CENTER);
     }
    //---------------------------------------------------------------
    
    if(estado.equals("minijuego")){
      background(fondo);
       textSize(40);
   p.dibujarAbeja();
   
    for (int i=0; i<sapos.length; i++) {
      sapos[i].dibujarSapos();
      sapos[i].moverSapos();
    }
    
        for (int i=0; i<objetivos.length; i++) {
      objetivos[i].dibujarObjetivo();
      objetivos[i].obtenerObjeto();
    }

    reiniciarAbeja();
    fill(255, 255, 0);
    text("Vidas", 100, 50);
    text(vidas, 100, 100);
    
    Objetos();
    fill(#E3CA27);
    text("Mieles",width-100,50);
    text(objetos,width-100,100);
    
    fill(255);
    text("Tiempo", width/2, 50);
    text(time/99, width/2, 100);
    time -= 2;
    
     if (vidas==0) {
        estado = "derrota";
  }
  if (objetos==5) {
        estado = "victoria";
  }
  
  if (time==0) {
        estado = "derrota";
  }
  
    }
 
  //---------------------------------------------------------------
  
  if(estado.equals("derrota")){
   image(perdiste,0,0);
       if(key == 'R' || key == 'r'){
   if(estado =="derrota"){
     estado = "portada";
   }
   vidas = 5 ;
   objetos = 0;
   time = 3000;
  }
       }
  //---------------------------------------------------------------
  
   if(estado.equals("victoria")){
  image(ganaste,0,0);
       if(key == 'P' || key == 'p'){
   if(estado =="victoria"){
     estado = "portada";
   }
   vidas = 5 ;
   objetos = 0;
   time = 3000;
   p.px = width/2;
   p.py = height-p.ptam/2;
  }
  }
 }
//fin de dibujarjuego 
  
  void moverPersonaje(int tecla) {
    p.moverAbeja(tecla);
  }
 
   void reiniciarAbeja() {
    for (int i=0; i<sapos.length; i++) {
      float distancia = dist(p.px, p.py, sapos[i].dx, sapos[i].dy);
      if (distancia<sapos[i].dtam/2+p.ptam/2) {
        p.reiniciarAbeja();
        vidas --;
      }
    }
  }
  
   void Objetos(){
    for (int i=0; i<objetivos.length; i++) {
      float distancia = dist(p.px, p.py, objetivos[i].ox, objetivos[i].oy);
      if (distancia<objetivos[i].otam/2+p.ptam/2) {
        objetivos[i].obtener();
        objetos ++;
      }
    }
  }
  void sound(){
  if(estado.equals("derrota")||(estado.equals("victoria"))||(estado.equals("portada"))||(estado.equals("minijuego")));
  player.play();
}
}
 
