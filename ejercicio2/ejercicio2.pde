int miColor; // Variable del color del fondo
PFont font; // Variable que almacena el tipo de fuente
String a; // Variable que almacena cadenas de caracteres, para poder escribir texto

void setup(){ // Pone las opciones generales, por defecto si no pones nada
  size(400, 400);
  miColor = 255; // Fondo
  font = loadFont("Monospaced-48.vlw");
  a = "Buenos días";
  textSize(60);
  noStroke(); // Borde deshabilitado, lo que pintes saldrá sin borde
}

void draw (){
  background(miColor);
  fill(255, 255, 0); // Coloreamos los cuadrados de amarillo
  rect(20, 20, 80, 80);
  rect(300, 20, 80, 80);
  rect(20, 300, 80, 80);
  rect(300, 300, 80, 80);
  
  if(mouseX>20 && mouseX<100 && mouseY>20 && mouseY<100)miColor=0; // Si la coordenada X (horizontal) del ratón es mayor que 20 y menor que 100; y la coordenada Y (vertical) del ratón es mayor que 20 y menor que 100, la variable miColor=negra
  else miColor=255; // sino miColor=blanco
  
  if(mouseX>20 && mouseX<100 && mouseY>300 && mouseY<380){
    fill(0);
    text("Buenos días", 50, 220);
  }
  
  if(mouseX>300 && mouseX<380 && mouseY>20 && mouseY<100){
    fill(255, 0, 0);
    circle(200, 200, 200);
  }
  
  if(mouseX>300 && mouseX<380 && mouseY>300 && mouseY<380){
    fill(0, 255, 0);
    rect(100, 100, 200, 200);
  }
}
