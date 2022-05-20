//declaración de variables
float posX, posY;
float velX=1;
PFont georgia; 
String texto1 ="ARIEL\n\n\n\n ÚRSULA \n\n SEBASTIÁN\n\n TRITÓN\n\n SCUTTLE\n\n FLOTSAM Y JETSAM\n\n ERIC \n\n CARLOTTA \n\n GRIMBSY \n\n FLOUNDER \n\n LOUIS";
String texto2 ="Gabriela Leon\n\n Isela Sotelo\n\n Serena Olvido \n\n Michael Cruz\n\n Guillermo Romano\n\n Victor Mares\n\n Alejandro Abdalah\n\n Demian Bichir\n\n Amparo Logreyra\n\n Victor Mares\n\n Rigoberto Jimenez\n\n Demian Bichir";
String texto3 ="Mark Henn\n\n Glen Keane\n\n Duncan Marjoribanks\n\n Ruben Aquino\n\n Andreas Deja\n\n Matthew O'Callaghan";
PImage titulo;
PImage sebastian; 
PImage bote;
PImage pez;
PImage flor; 
PImage flounder;
PImage tenedor;
PImage scuttle;
int miVariable= 1000; 
boolean  boton;
color fondo;

void setup() {
  //click= false;
  size (1280, 720);
  textAlign(CENTER); 
  //Asignación de BOTON
  boton= false;
  //asignación
  posY = height/2; 
  posX = width/2; 
  frameCount= miVariable;
  titulo = loadImage("titulo.jpg");
  sebastian= loadImage("sebastian.png");
  bote= loadImage("bote.jpeg");
  georgia= loadFont("georgia.vlw");// la de wdp
  flor= loadImage("flor.png");
  tenedor= loadImage("tenedor.jpg");
  pez= loadImage("pez.png"); 
  fondo=color(26, 166, 183);
  scuttle= loadImage("scuttle.png");
}

void draw() {
  background(fondo);

  //decoración del inicio
  textFont(georgia);
  textSize(45);
  fill(224, 221, 111);
  text("CLICK PARA INICIAR", width/2, posY+200);
  image(scuttle,width/2,posY-300);


  //BOTON DE INICIO
  rectMode(CENTER);
  strokeWeight(5);
  fill(random(255), random (255), random(255));
  rect(width/2, height/2, 200, 200);

  if ((mouseX<740 && mouseX>540 && mouseY>260 && mouseY<720 && mousePressed) || boton==true) {

    boton = true;
    background(fondo);


    //presenta
    textFont(georgia);
    fill(255, 255, 255); 
    textSize(60);
    text("WALT DISNEY PICTURES", 640, posY-260); 

    //titulo
    image(titulo, posX-400, posY-250); 
    fill(175, 171, 28);
    textSize(100);
    text("La Sirenita", posX, posY+180);


    //inicio de créditos de voz y png de sebastian
    textSize(40);
    fill(255, 255, 255);
    text("con las voces de\n\n", posX, posY+250);
    text(texto1, posX-250, posY+320);
    text(texto2, posX+250, posY+320);
    image(sebastian, posX-560, posY+1050, 180, 180);
    image(bote, posX-400, posY+1550, 800, 552);

    //créditos de música
    textSize(30);
    text("CANCIONES DE", posX, posY+2300);
    textSize(40); 
    text("Howard Ashman", posX-250, posY+2400);
    text("Alan Menken", posX+250, posY+2400);
    image(flor, posX+170, posY+2430, 600, 373);

    //créditos de producción
    textSize(30);
    text("PRODUCIDA POR", posX, posY+2600);
    textSize(40); 
    text("Howard Ashman y John Musker", posX, posY+2700); 
    image(tenedor, posX-325, posY+2800);
    textSize(30);
    text("DIRECCIÓN DE ANIMACIÓN", posX, posY+3450);
    textSize(40); 
    text(texto3, posX, posY+3550);
    image(pez, posX-410, posY+3720, 200, 158);
    println (posY);
    
    //FIN
    textSize(70);
    text("FIN.", posX, posY+4200);


    //uso de condicional para movimiento
    if
      (posY<= height)
    {
      posY--;
    }
  }
}
