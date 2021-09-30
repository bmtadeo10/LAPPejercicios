int fondo; // Variable del color del fondo
PFont font; // Variable que almacena el tipo de fuente
String a; // Variable que almacena cadenas de caracteres, para poder escribir texto
int pos; // Variable entera para posición (pos) de text
int deg; // Variable entera
float esc; // Variable con decimales para escalar (esc) el círculo

void setup(){ // Opciones generales-por defecto si no pones nada
size(400,400);
font = loadFont("Monospaced-48.vlw");
a = "Hola";
textSize(60);
noStroke(); // Borde deshabilitado, lo que pintes saldrá sin borde
fondo = 255; // Asignamos color al fondo
pos = 0; // Inicialmente valor 0-que no esté
deg = 0; //?
esc = 1; //?
}

void draw(){
  background(fondo);
  fill(255, 255, 0);
  rect(20, 20, 80, 80);
  rect(300, 20, 80, 80);
  rect(20, 300, 80, 80);
  rect(300, 300, 80, 80);
  
  if(mouseX>20 && mouseX<100 && mouseY>20 && mouseY<100)fondo=0; //?
  else fondo=255;
  
  if(mouseX>20 && mouseX<100 && mouseY>300 && mouseY<380&&pos<300){ // pos<300 hace que text s mueva hasta 300 q x su largo coincide con el fin d la pantalla y como a partir d ahí sería +300 vuelve a empezar
    fill(0);
    text(a, pos, 221); // (a="Hola", ? , altura a la q aparece text)
    pos+=2; // pos va aumentando cada vez que continuas encima del cuadrado, primero sumas el valor y luego se lo asignas a la variable y así suma sucesivamente y s mueve hacia la dcha
  }
  else pos=0; // text no aparece cnd no tocas el cuadrado-coordenadas
  
  if(mouseX>300 && mouseX<380 && mouseY>20 && mouseY<100){
    pushMatrix(); // Método junto con popMatrix() para sacar el origen de coordenadas de su sitio
    translate(200,200); // Mueve origen de coordenadas en coordenadas determinadas y relativas al origen anterior
    scale(esc); // Cambia tamaño cuadrícula
    esc = esc*0.98; // y la reduce cada vez un poco más
    fill(255, 255*(1-esc), 255*(1-esc)); // Si esc=1-círculo completo y entero rgb(255, 0, 0); Conforme esc disminuya, valor que multiplica verde y azul irá creciendo de manera que sus 0 se irán haciendo más grandes, no llegará a 255 pero se quedará cerca y el círculo se irá aclarando progresivamente
    circle(0, 0, 200);
    if(esc<0.1){esc = 1;} // Si esc llega a ser <0.1 vuelve a su origen y x eso no para
    popMatrix();
  }
  else{esc = 0;} // circle no aparece cnd no tocas el cuadrado-coordenadas
  
  if(mouseX>300 && mouseX<380 && mouseY>300 && mouseY<380){
    pushMatrix(); // Método junto con popMatrix() para sacar el origen de coordenadas de su sitio
    translate(200, 200); // Mueve origen de coordenadas
    rotate(radians(deg)); // 
    deg++; // 
    fill(0, 255, 0);
    rect(-100, -100, 200, 200);
    popMatrix();
  }
}
