// COMBIS, MILAGROS // LEGAJO: 91505/3 // COMISION:1 // PROFESOR: JOSE LUIS BUGIOLACHI//
int num; 
int posx;
int tama;
int tamo;
float opac;
boolean t;

void setup() {
  size(600, 600);
  noStroke();
  num = 10;
  tama = width/num;                              //tamaño alto
  tamo = height/num;                             //tamaño ancho
}
void draw() {
  t=false;
  float d = dist(width/2, height/2, mouseX, mouseY);    //calculo rosa fondo
  float maxDist = dist(0, 0, width/2, height/2);
  float rosa = map(d, 0, maxDist, 0, 255);
  fill(rosa);
  background(237, rosa, 228);          //color de fondo
  circlefondo();

  if (frameCount <10||posx==width+70) {    //reinicio posición y opacidad automáticamente
    opac=0;
    t=!t;
    posx=-70;
  }
  if (posx<=0||posx>=0) {
    posx+=1;
  }

  for (int i=0; i<num; i++) {    //ciclo for para el circle del fondo
    for (int j=0; j<num; j++) {
      ellipseMode (300);
      fill(38, 105, 209, opac);
      circle(i*tama, j*tama, tamo);
    }
  }
  for (int i=0; i<num; i++) {    //ciclo for para el circle rojo
    fill(200, 40, 40, opac);
    circle (posx, i*tama, tamo);
  }
}

void keyPressed () {             //reinicio manual
  if (key == 'r' || key=='R') {
    frameCount = 0;
  }
}

//https://youtu.be/Z_1EWseEYHc//<<Link de explcacion//
