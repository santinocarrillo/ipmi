PImage fondoenmovimiento; 

PImage freezer1;
PImage goku1;
PImage logo1;
PImage bolas1;
PImage frezeerygoku1;
PImage dende1; 
PImage namekianos;
PImage namek;
PImage vegetaImg;
PImage gokussjvsf;

int pantalla = 1;
float velocidadSalida = 15;
float fondoY1 = 0;
float fondoY2 = -480;
float velocidadFondo = 2;
PFont fuenteNueva;

float gokuY1 = 148;
float freezerY1 = 180;
float textoY1 = 115;
float logoY1 = -150;
boolean enPausa1 = false;
int demora1 = 0;

float bolasy = 500;
float bolasx = 10;
float fyg1 = 500;
float dendex = -100;
float textoy2 = 43;
boolean enPausa2 = false;
int demora2 = 0;

float namekx = 640;
float namekianosx = -640;
float namekianosy = 280;
float textoy3 = -100;
boolean enPausa3 = false;
int demora3 = 0;

float vegetax = -640;
float textox4 = 370;
float textoy4 = 95;
float textoEntradaX4 = 640;
boolean enPausa4 = false;
int demora4 = 0;

float gvfy = 500;
float textox5 = 70;
float textoy5 = -100;
boolean enPausa5 = false;
int demora5 = 0;

float respiracion = 0;
float respVel = 0.05;

void setup() {

  size(640, 480);

  fondoenmovimiento = loadImage("dbz.jpg");

  freezer1 = loadImage("frezeer1.png");
  goku1 = loadImage("goku2.png");
  logo1 = loadImage("dragonlogo.png");
  bolas1 = loadImage("bolas1.png");
  frezeerygoku1 = loadImage("frezeerygoku1.png");
  dende1 = loadImage("dende1.png");
  namekianos = loadImage("namekianos.png");
  namek = loadImage("Namek.png");
  vegetaImg = loadImage("vegeta.png");
  gokussjvsf = loadImage("gokussj1vsf.png");
  
  fuenteNueva = loadFont("yamcha1.vlw");
  textFont(fuenteNueva);
}

void draw() {

  fondoInfinito();

  if (pantalla == 1) pantalla1();
  if (pantalla == 2) pantalla2();
  if (pantalla == 3) pantalla3();
  if (pantalla == 4) pantalla4();
  if (pantalla == 5) pantalla5();
}

void fondoInfinito() {

  image(fondoenmovimiento, 0, fondoY1, 640, 480);
  image(fondoenmovimiento, 0, fondoY2, 640, 480);

  fondoY1 = fondoY1 + velocidadFondo;
  fondoY2 = fondoY2 + velocidadFondo;

  if (fondoY1 >= 480) fondoY1 = -480;
  if (fondoY2 >= 480) fondoY2 = -480;
}

void pantalla1() {

  image(logo1, 140, logoY1, 400, 400);
  image(goku1, 0, gokuY1, 350, 350);
  image(freezer1, 265, freezerY1, 380, 300);
  
  fill(#FF0000);
  textSize(30);

  text("SAGA DE FREEZER", 190, textoY1);

  if (enPausa1 == false) {

    demora1 = demora1 + 1;

    if (demora1 > 300) enPausa1 = true;
  }
  
  else {

    gokuY1 = gokuY1 + velocidadSalida;
    freezerY1 = freezerY1 + velocidadSalida;
    logoY1 = logoY1 - velocidadSalida;
    textoY1 = textoY1 - velocidadSalida;
  }
 
  if (gokuY1 > 480) pantalla = 2;
}

void pantalla2() {
  
  if (enPausa2 == false) {

    if (bolasy > 150) bolasy = bolasy - velocidadSalida;
    if (fyg1 > 110) fyg1 = fyg1 - velocidadSalida;
    if (dendex < 10) dendex = dendex + velocidadSalida;
    if (bolasy <= 150 && fyg1 <= 110 && dendex >= 10) {
      enPausa2 = true;
    }
  }

  else {

    demora2 = demora2 + 1;
    if (demora2 > 300) {
      bolasx = bolasx - velocidadSalida;
      fyg1 = fyg1 + velocidadSalida;
      dendex = dendex - velocidadSalida;
      textoy2 = textoy2 - velocidadSalida;
    }
  }

  image(bolas1, bolasx, bolasy, 200, 200);
  image(frezeerygoku1, 250, fyg1, 350, 375);
  image(dende1, dendex, 283, 200, 200);

  fill(0);
  textSize(30);

  text("Freezer busca reunir las bolas del dragon\nGoku esta dispuesto a detenerlo!", 30, textoy2);

  if (bolasx < -250) pantalla = 3;
}

void pantalla3() {

  if (enPausa3 == false) {
    if (namekianosx < 0) namekianosx = namekianosx + velocidadSalida;
    if (namekx > 510) namekx = namekx - velocidadSalida;
    if (textoy3 < 40) textoy3 = textoy3 + velocidadSalida;
    if (namekianosx >= 0 && namekx <= 510 && textoy3 >= 40) {
      enPausa3 = true;
    }
  }

  else {

    demora3 = demora3 + 1;

    if (demora3 > 300) {
      namekianosx = namekianosx - velocidadSalida;
      namekx = namekx + velocidadSalida;
      textoy3 = textoy3 - velocidadSalida;
    }
  }

  image(namekianos, namekianosx, namekianosy, 640, 200);
  image(namek, namekx, 0, 150, 150);

  fill(0);
  textSize(20);

  text("Toda la saga transcurre en NAMEK,\nel planeta de los namekianos", 20, textoy3);

  if (namekianosx < -640) pantalla = 4; 
}

void pantalla4() {

  if (enPausa4 == false) {
    if (vegetax < 0) {
      vegetax = vegetax + velocidadSalida;
    }
    if (textoEntradaX4 > textox4) {
      textoEntradaX4 = textoEntradaX4 - velocidadSalida;
    }
    if (vegetax >= 0 && textoEntradaX4 <= textox4) {
      enPausa4 = true;
    }
  }
 
  else {

    demora4 = demora4 + 1;
    if (demora4 > 300) {
      vegetax = vegetax - velocidadSalida;
      textoEntradaX4 = textoEntradaX4 + velocidadSalida;
    }
  }

  image(vegetaImg, vegetax, 0, 640, 480);

  fill(0);
  textSize(24);

  text("Vegeta le ruega a Goku\nque derrote a Freezer", textoEntradaX4, textoy4);

  if (vegetax < -640) pantalla = 5;
}

void pantalla5() {

  if (enPausa5 == false) {
    if (gvfy > 95) {
      gvfy = gvfy - velocidadSalida;
    }
    if (textoy5 < 55) {
      textoy5 = textoy5 + velocidadSalida;
    }
    if (gvfy <= 95 && textoy5 >= 55) {
      enPausa5 = true;
      demora5 = 0;
    }
  }

  else {
    demora5 = demora5 + 1;
  }

  image(gokussjvsf, 95, gvfy, 450, 280);

  fill(0);
  textSize(23);

  text("Goku alcanzo la transformacion SUPER SAYAYIN", textox5, textoy5);

  respiracion = respiracion + respVel;

  float pulso = (sin(respiracion) + 1) / 2;
  float tam = 180 + pulso * 15;
  float alpha = 150 + pulso * 105;

  boolean sobreMouse = false;

  if (mouseX > width/2 - tam/2 &&
      mouseX < width/2 + tam/2 &&
      mouseY > 390 &&
      mouseY < 450) {

    sobreMouse = true;
  }

  if (sobreMouse) {

    fill(200, 0, 0, alpha);
  }

  else {

    float gris = 150 + pulso * 80;
    fill(gris, gris, gris, alpha);
  }

  noStroke();
  rect(width/2 - tam/2, 390, tam, 60, 8);
  if (sobreMouse) {
    fill(180, 0, 255);
  }

  else {

    fill(50);
  }

  textSize(24);

  text("RESET", 285, 428);
}

void mouseClicked() {

  if (pantalla == 5) {

    if (mouseX > width/2 - 110 &&
        mouseX < width/2 + 110 &&
        mouseY > 390 &&
        mouseY < 450) {

      pantalla = 1;

      gokuY1 = 148;
      freezerY1 = 180;
      textoY1 = 115;
      logoY1 = -150;
      enPausa1 = false;
      demora1 = 0;

      bolasy = 500;
      bolasx = 10;
      fyg1 = 500;
      dendex = -100;
      textoy2 = 43;
      enPausa2 = false;
      demora2 = 0;

      namekx = 640;
      namekianosx = -640;
      textoy3 = -100;
      enPausa3 = false;
      demora3 = 0;

      vegetax = -640;
      textoEntradaX4 = 640;
      enPausa4 = false;
      demora4 = 0;

      gvfy = 500;
      textoy5 = -100;
      enPausa5 = false;
      demora5 = 0;

      respiracion = 0;
    }
  }
}
