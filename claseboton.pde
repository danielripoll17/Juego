class Boto {
  //Variables que identiquen un botó
  float xPos;
  float yPos;
  color c;
  float widthB;
  float heightB;
  int pantallaActual;
  int pantallaDesti; 
  PFont fonBoto;
  String texte;
  
  //construim el botó
  Boto(float x, float y, color col, float w, float h, int inici, int fi, String t){
    fonBoto = createFont("Georgia", 12);
    textFont(fonBoto);
    xPos = x;
    yPos = y;
    c = col;
    widthB = w;
    heightB = h;
    pantallaActual = inici;
    pantallaDesti = fi;
    texte = t;
  }
  
  //pintem el botó
  void dibuixa(){
    fonBoto = createFont("Georgia", 20);
    textFont(fonBoto);
    fill(c, 100);
    rect(xPos, yPos, widthB, heightB, 5);
    fill(255);
    text (texte, xPos + 10, yPos + 30);
  }
  
  //mirem si el ratolí está a la posició interior del botó i actualitzem el valor de la pantalla
  void apreta(){
    if ((xPos <= mouseX && mouseX <= xPos + widthB) && (yPos <= mouseY && mouseY <= yPos + heightB) && pantalla == pantallaActual){
      pantalla = pantallaDesti;
    }
  }
  //si vull canviar de pantalla des d'un botó
  void canviPantalla(int pantallai, int pantallad){ 
    pantallaActual = pantallai;
    pantallaDesti = pantallad;

  }
  //si vull canviar de pantalla automaticament a una posició
  void canviPant(int p){ 
    pantalla=p;
  }

}
