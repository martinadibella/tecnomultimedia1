class Escenario {
  float x, y, t;
  PImage escenarioFondo; 

  //mis objetos
  miel miel1, miel2, miel3, miel4, miel5, miel6, miel7;
  winnie winniepooh;

  //llamo a objetos
  Escenario() {
    escenarioFondo = loadImage("escenario.jpg");
    miel1= new miel();
    miel2= new miel();
    miel3= new miel();
    miel4= new miel();
    miel5= new miel();
    miel6= new miel();
    miel7= new miel();
    winniepooh= new winnie();
  }

  void dibujar() {
    image(escenarioFondo, 0, 0, width, height);
    miel1.subirimagenes();
    winniepooh.cargarimagen();
  }
  void renovar() {
    winniepooh.moverwinnie();
  }
}
