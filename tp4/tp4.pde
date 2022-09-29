// la intención del paisaje es desplazar a winnie pooh con las flechas del teclado para que vaya alzanzando las mieles
//LINK A YOUTUBE https://youtu.be/H1HOQM4lFOM
PImage escenarioFondo;
Escenario escena; 
void setup() {
  escena = new Escenario();
  size (736, 414);
}
void draw() {
  escena.dibujar();
}
void keyPressed() {
  escena.renovar();
}
