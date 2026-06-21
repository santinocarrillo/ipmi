//https://www.youtube.com/watch?v=CjRAhDnlhtg
PImage imagen;

float grosor = 3.5;

int derecha;
int abajo;

boolean rotar = false;

float angulo = 0;

int cuadradoX = -1;
int cuadradoY = -1;

void setup() {
size(800,400);
imagen = loadImage("4.jpg");

rectMode(CENTER);
}

void draw(){

background(#FF0000);
image(imagen,0,0,400,400);

if(rotar){
angulo += 0.05;

}

for(derecha = 0; derecha < 7; derecha++){
for(abajo = 0; abajo < 7; abajo++){

float x = 427 + derecha*58;
float y = 28 + abajo*58;

patron();

if(estaCerca(x,y)){
strokeWeight(8);
}

noFill();

if(derecha == cuadradoX && abajo == cuadradoY){

pushMatrix(); 

translate(x,y);

rotate(angulo);

rect(0,0,35,35);

popMatrix();

}else{

ellipse(x,y,35,35);
}
}
}
}

void mousePressed(){
cuadradoX = int(random(7));
cuadradoY = int(random(7));

rotar = true;
 
}

boolean estaCerca(float x, float y){
return dist(mouseX, mouseY, x, y) < 20;
}

void keyPressed(){
if(key == 'r'){

rotar = false;
cuadradoX = -1;
cuadradoY = -1;
angulo = 0;
}
}
