void circlefondo(){

  if (posx<width/2 && t==false) {  //cambio de opacidad conforme avanza
    opac++;
  } else if (posx>width/2) {
    opac--;
  }  
}
