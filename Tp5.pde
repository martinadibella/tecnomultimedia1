// https://youtu.be/xEEAAXIM4Hw
import ddf.minim.*; 
import ddf.minim.analysis.*; 
import ddf.minim.effects.*; 
import ddf.minim.signals.*; 
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim; 
AudioPlayer player; 

Juego j;                                                                          
void setup() {
  size(800, 600);
  j = new Juego();
  minim = new Minim (this);
  player = minim.loadFile ("canyoonmoon.mp3", 500);
}
void draw() {

  j.dibujarJuego();

  if (keyPressed) {
    j.moverPersonaje(keyCode);
  }
 j.sound();
}

void mousePressed(){
  if (mousePressed) {
      j.estado = "minijuego";
       }
}
