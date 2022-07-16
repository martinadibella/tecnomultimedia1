//CATALINA ORBAICETA 91504/2
//MARTINA DI BELLA 91397/9
// link del video: https://youtu.be/pgtNVnuPJmo 

int estado=0;
float distan;
PFont fuentenueva;
String [] respuestas ={"S.XX", "500 a.C", "S.XIV", "2017", "2019", "1996", "1815", "2001", " No hay una \n única fecha", "1° Guerra \n Mundial", "Nacimiento de Jesús", "Revolución \n Francesa"};
PImage []imagenes = new PImage[5];


void setup() {
  size (600, 600);
  estado=0;
  fuentenueva=loadFont("DialogInput.bold-48.vlw");
  distan=dist(mouseX, mouseY, height, width);
   imagenes[0]= loadImage("inicio.png");
   imagenes[1]= loadImage("instrucciones.png");
   imagenes[2]= loadImage("ganaste.png");
   imagenes[3]= loadImage("perdiste.png");
}

void draw () {

  background(203, 148, 262);
  println(distan);
  if (estado==0) {
    //Primera pantalla
  image(imagenes[0],0,0,600,600);
  } else if (estado==1) {
    // Segunda Pantalla
image(imagenes[1],0,0,600,600);
  }

  // pregunta 1 
  else if (estado==2) {
    noStroke();
for(int cuadrados=150;cuadrados<451;cuadrados+=100){
 fill(246, 255, 188);
  rect(230,cuadrados,140,80);

}
    texto("¿Cuándo empezó el renacimiento?", 300, 100, 28 );
    pantallas(respuestas[0], width/2, 200, 30 );
    pantallas(respuestas[1], width/2, 300, 30 );
    pantallas(respuestas[2], width/2, 400, 30 );
    pantallas(respuestas[3], width/2, 500, 30 );
     
  }
  // pregunta 2 
  else if ( estado==3 ) {
    noStroke();
    fill(246, 255, 188);
    rect(260, 150, 80, 80);
    rect(260, 250, 80, 80);
    rect(260, 350, 80, 80);
    rect(260, 450, 80, 80); 
    texto("¿En qué año nuestra facultad \n recibió su actual nombre?", 300, 100, 28);
    pantallas(respuestas[4], width/2, 200, 30 );
    pantallas(respuestas[5], width/2, 300, 30 );
    pantallas(respuestas[6], width/2, 400, 30 );
    pantallas(respuestas[7], width/2, 500, 30 );
  }
  // pregunta 3
  else if (estado==4) {
    noStroke();
    fill(246, 255, 188);
    rect(120, 150, 350, 90);
    rect(120, 250, 350, 90);
    rect(120, 350, 350, 90);
    rect(120, 450, 350, 90);
    texto("¿Cuándo empieza el \n arte contemporáneo?", 300, 50, 28 );
    pantallas(respuestas[8], 275, 190, 30 );
    pantallas(respuestas[9], 275, 285, 30 );
    pantallas(respuestas[10], width/2, 400, 30 );
    pantallas(respuestas[11], 280, 485, 30 );
  } else if (estado==5) { //pantalla de ganaste
    image(imagenes[2],0,0,600,600);
  } else if (estado==6) {
   image(imagenes[3],0,0,600,600); //pantalla de perdiste
    
  }
  // condición de reinicio
}


void pantallas(String texto, int px, int py, int tamText) {
  textSize(tamText);
  textAlign(CENTER);
  fill(0);
  text(texto, px, py);
}


void mousePressed() {
  if (estado==0) {
    estado=1;
  } else if (estado==1) {
    estado=2;
  } else if (estado==2) {
    if (mouseX>230&&mouseX<360&&mouseY>345&&mouseY<420) {
      estado=3;
    } else if (mouseX>240&&mouseX<320&&mouseY>200&&mouseY<550) {
      estado=6;
    } else if (mouseX>240&&mouseX<360&&mouseY>150&&mouseY<230) {
      estado=6;
    } else if (mouseX>250&&mouseX<360&&mouseY>200&&mouseY<550) {
      estado=6;
    }
  } else if (estado==3) {
    if (mouseX>263&&mouseX<340 &&mouseY>147&&mouseY<224) {
      estado=4;
    } else if (mouseX>260&&mouseX<340&&mouseY>248&&mouseY<330) {
      estado=6;
    } else if (mouseX>260&&mouseX<360&&mouseY>347&&mouseY<430) {
      estado=6;
    } else if (mouseX>250&&mouseX<360&&mouseY>447&&mouseY<530) {
      estado=6;
    }
  } else if (estado==4) {
    if (mouseX>120&&mouseX<460&&mouseY>150&&mouseY<240) {
      estado=5;
    } else if (mouseX>120&&mouseX<460&&mouseY>250&&mouseY<340) {
      estado=6;
    } else if (mouseX>120&&mouseX<460&&mouseY>350&&mouseY<440) {
      estado=6;
    } else if (mouseX>120&&mouseX<460&&mouseY>450&&mouseY<540) {
      estado=6;
    } else if (estado==5) {
      estado=0;
    }
  }
  }
   void keyPressed(){
    if (keyCode==ENTER) {
      if (estado==5 || estado==6) {
        reiniciar();
      }
    }
  }
  
  void texto( String texto, float x, float y, float tamanio) {

  textAlign( CENTER );
  textSize( tamanio );
  text( texto, x, y );
}  
  void reiniciar() {
    estado=0;

}
   
    
  
