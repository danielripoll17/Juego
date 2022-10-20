PImage fons;
Boto bini;
int pantalla=1;

void setup()
 
  {
    //Càrrega de les imatges
    size(1500,900);
    fons = loadImage("pantprincipal.png");
    
    //Càrrega dels botons
   bini = new Boto(570,515,color(0,0,255),350,120,1,2,"");

  }

void draw(){
image(fons, 0, 0);
println(mouseX + ":" + mouseY);
switch(pantalla){
    case 1: inicio();break; //pantalla inicial
    case 2: historia();break; //pantalla del joc
    case 3: mapa();break; //pantalla botons
    case 4: break; //pantalla final
  }
}
void mousePressed(){
  bini.apreta();
}
