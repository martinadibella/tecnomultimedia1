//link del video explicativo: https://youtu.be/v7fVuMZ1IaE

//BIENVENIDO!!
//MUEVA EL MOUSE PARA VER LA ILUSIÓN ÓPTICA
//PRESIONE LA BARRA ESPACIADORA PARA CAMBIAR EL FONDO
//PRESIONAR LA TECLA R PARA REINICIAR EL FONDO
//(tip personal: si la compu anda lenta y no funciona bien el teclado hacer click y suele responder)

color fondo;
 
void setup(){
  size(800,600);
  fondo= 255;
}
void keyPressed(){
if(key== ' '){
fondo= color (random(254), random(254), random(254));
}
  if(key== 'r'){
reset();
 }
}

void draw(){
 background(fondo); 
 fill(0);
 
 //FIGURA DEL FONDO
 pushMatrix(); 
 translate(width/2, height/2);
 figuritarepetida();
 popMatrix();
 
 //FIGURA QUE SE TRASLADA CON EL MOUSE
  pushMatrix(); 
 translate(mouseX, mouseY);//centro se va moviendo con el mouse
 figuritarepetida(); 
 popMatrix();
}

 void figuritarepetida() {
   int franjas = 220;  // cantidad de franjas que salen desde el centro
  for (int a=0; a<franjas; a++) {
     float b1 = map(a, 0, franjas-1, 0, TAU); // (acá empieza el ángulo de las franjas) nota para mí: TAU= TWO_PI = 360° OSEA 6,28.... EN RADIANES
     float b2 = b1 + (TAU/(2*franjas));       // (acá se cierra el ángulo de las franjas)
     arc(0, 0, 2000, 2000, b1, b2);     // final del círculo que contiene las franjas de la 2da figura (a partir de 2000 no se ve que es un círculo)
  
  }
 }
 
 void reset(){
   fondo=255;
 }
