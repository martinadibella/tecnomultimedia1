class winnie {
  PImage winniep;
  float x, y;
  winnie() {
    winniep= loadImage("winniep.png");
    x=293;
    y=142;
  }
  void moverwinnie() { 

    if (keyPressed && (key== CODED)) {
      if (keyCode==LEFT) {
        x -=6;
      } else if (keyCode == RIGHT) {
        x +=6;
      }
      if (keyCode == UP) {
        y -=6;
      } else if (keyCode==DOWN) {
        y +=6;
      }
    }
  }
  void cargarimagen() {
    image (winniep, x, y, 150, 150);
  }
}
