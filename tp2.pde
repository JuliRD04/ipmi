//Julian Rodriguez Diaz
//Comision 2
//Legajo: 91443/6
String estado;
int c; //contador
PImage undertalemenu;
PImage p1;
PImage p2;
PImage p3;
PImage p4;
PImage fin;
PFont font;

 void setup() {
  size (640, 480);
 font = loadFont("DeterminationSansWebRegular-369X.vlw");
 textFont(font);
 undertalemenu = loadImage("undertalemenu.jpg");
 p1 = loadImage("p1.png");
 p2 = loadImage("p2.png");
 p3 = loadImage("p3.png");
 p4 = loadImage("p4.png");
 fin = loadImage("fin.png");
 estado = "undertalemenu";
 frameRate(60);
}

void draw(){
  background(0);
   
   //MAQUINA DE ESTADOS--;
   
  if( estado == "undertalemenu") {
  image(undertalemenu, 35,0);
textSize(20);
text( "[ presiona abajo ]" , 240,300 );
circle(width/2, height/4*3,50);

//
} else if (estado.equals("p1")) {
  image(p1,25,25);
  textSize(20);
  text( "Hace Tiempo, dos razas" , 220,380);
  text( "gobernaron la Tierra:", 230,420);
  text("HUMANOS y MONSTRUOS.", 200,460);
  c++; //suma 1 per frame
  if ( c >= 300 ) { // 60fps * 5seg = 300
  estado = "p2";
  c = 0; // RESET DE VARIABLE CONTADOR
  }
  //
  } else if(estado.equals("p2")) {
    image(p2,25,25);
    textSize(20);
    text( "Un dia, una guerra", 240, 380);
    text( "se desató entre", 250, 420);
    text( "las dos razas.", 260, 460);
    c++; // suma 1 per frame
if ( c >= 600 ) { // 60fps * 10seg = 600
estado = "p3";
c = 0;
}
} else if(estado.equals("p3")) {
  image(p3,25,25);
  text("tras una larga batalla,", 240, 380);
  text("los humanos fueron", 245,420);
  text("victoriosos.", 280, 460);
  c++; //suma 1 per frame
  if ( c >= 600 ) { // 60fps * 10seg = 600
estado = "p4";
c = 0;
}
} else if(estado.equals("p4")) {
  image(p4,25,25);
  text("sellaron a los monstruos", 230, 380);
  text("bajo tierra con un", 260,420);
  text("hechizo magico.", 270, 460);
  c++; // suma 1 per frame
if ( c >= 300 ) { // 60fps * 5seg = 300
estado = "fin";
} 
}else if (estado.equals("fin")) {
  image(fin,25,25);
  textSize(25);
text( "[ FIN presiona arriba ]" , 210, 450 );
circle(width/2, height/4*3,50);
} 
}
void mousePressed(){
if (estado.equals("undertalemenu")) {
if (dist (width/2, height/4*3, mouseX, mouseY) < 50/2) {
 estado = "p1";
}
}
if (estado.equals("fin")) {
  if (dist (width/2, height/4*3, mouseX, mouseY) < 50/2) {
    estado = "undertalemenu";
  }
}
}
