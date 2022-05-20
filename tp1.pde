//Combis,Milagros (91505/3) - Trabajo Practico 1
int x, x1, x2, x3, y, y1, y2, y3, y4, y5, y6, y7, y8, y9, y10;
PImage titulo, batalla, Snape, Malfoy, Voldy, creditos, trio, Bandasonora, Dumbledore, SiriusBlack, RubeusHagrid, RemusLupin ;
String Titulo; 
PFont letra; 
void setup() {
  size(800, 650);
  y=350;
  y1=60;
  y2=220;
  y3=325;
  x=340;
  x1=100;
  x2=260;
  x3=100;
  y4=260;
  y5=380;
  y6=150;
  y7=300;
  y8=430;
  y9=435;
  y10=100;
  letra=loadFont("JavaneseText-25.vlw");

  titulo = loadImage ("Titulo.jpg");
  RemusLupin = loadImage ("Lupin.jpg");
  Snape = loadImage ("Snape.jpg"); 
  Malfoy = loadImage ("Malfoy.jpg"); 
  Voldy = loadImage ("Voldy.jpg"); 
  creditos= loadImage ("Creditos.jpg");
  SiriusBlack= loadImage ("SiriusBlack.jpg");
  RubeusHagrid= loadImage ("Rubeus Hagrid.jpg");
  trio= loadImage ("Trio.jpg"); 
  Dumbledore= loadImage ("Dumbledore.jpg");
  Bandasonora = loadImage ("hogwarts.jpg");
}

void draw () {
  background(0);
  if (frameCount>0 && frameCount<100) {
    image(titulo, 0, 0, width, height);
  } else if (frameCount>100 && frameCount<300) { 
    image(trio, 0, 0, 800, 650);
    textSize(35);
    text("Actores Principales", x2, y1);
    text("Daniel Radcliffe\nHarry Potter", x3, y6);
    y6+=0;
    text("Rupert Grint\nRon Weasly", x3, y7);
    y7+=0;
    text("Emma Watson\nHermione Granger", x3, y9);
    y9+=0;
  } else if ( frameCount>300 && frameCount<400) {
    image(Dumbledore, 0, 0, 800, 650);
    textSize(35);
    text("Michael Gambon\nAlbus Dumbledore", x2, y2);
    y2-=0;
  } else if (frameCount>400 && frameCount<500) {
    image(RubeusHagrid, 0, 0, 800, 650);
    textSize(35);
    text("Robbie Coltrane\n Rubeus Hagrid", x3, y7);
    y7-=0;
  } else if (frameCount>500 && frameCount<600) {
    image (SiriusBlack, 0, 0, 800, 650);
    textSize(35);
    text("Gary Oldman\n Sirius Black", x2, y7);
    y7-=0;
  } else if ( frameCount>600 && frameCount<700) { 
    image (RemusLupin, 0, 0, 800, 650);
    textSize (35);
    text("David Thewlis\n Remus Lupin", x, y10);
    y10+=2;
  } else if (frameCount>700 && frameCount <800) {
    image( Snape, 0, 0, 800, 650);
    textSize (35);
    text("Alan Rickman\n Severus Snape", x1, y9);
    y9-=2;
  } else if (frameCount>800 && frameCount <900) { 
    image( Malfoy, 0, 0, 800, 650);
    textSize (35);
    text("Jason Isaacs\n Lucius Malfoy", x3, y6);
    y6-=0;
    text("Tom Felton\n Draco Malfoy", x3, y8);
    y8-=0;
  } else if (frameCount>900 && frameCount <1000) { 
    image( Voldy, 0, 0, 800, 650);
    textSize (35);
    text("Ralph Fiennes\n Lord Voldemort", x1, y9);
    y9-=2;
  } else if (frameCount>1000 && frameCount <1300) { 
    image( creditos, 0, 0, 800, 600);
    textSize (10);
    text("Creadora:\nJ.K.Rowling", x1, y6);
    y6+=1;
    text(" Director:\nChris Columbus", x1, y5);
    y5+=1;
    text(" Productor:\nDavid Heyman", x1, y8);
    y8+=1;
    text("Guionistas:\nSteve Kloves\n David Yates", x1,y9); 
    y9+=1;
    text("Banda sonora:\nJohn Williams\n Patrick Doyle\n Nicholas Hooper", x1, y10);
    y10+=1;
  }
}
void keyPressed() {
  if (key == 'r' || key == 'R') {
    frameCount = 0;
  }
}
