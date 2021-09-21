PImage foto;

void setup() {
  size(400, 400);
  foto = loadImage("canales.jpg");
  smooth(); //Suavizamiento de pixeles
}

void draw() {
  background(255);
  image(foto, 50, 50);
  
  //Círculo amarillo
  noStroke();  //Dibujar sin línea
  fill(253, 232, 15, 99); //RGB+opacidad
  ellipse(200, 200, 100, 100);
  
  //Polígono centro
  fill(255, 255, 255);
  beginShape();  //Dibujar forma uniendo vértices
  vertex(190, 170);
  vertex(220, 180);
  vertex(230, 185);
  vertex(200, 215);
  vertex(210, 250);
  vertex(200, 240);
  vertex(190, 245);
  vertex(215, 185);
  vertex(180, 180);
  endShape(CLOSE); //Cierre del polígono
  
  //Círculos rojos
  stroke(255, 0, 0);
  strokeWeight(2);
  noFill(); //Para dibujar formas no rellenas
  ellipse(50, 200, 100, 100);
  
  stroke(255, 0, 0);
  strokeWeight(2);
  noFill(); //Para dibujar formas no rellenas
  ellipse(350, 200, 100, 100);
  
  //Triángulos
  stroke(255, 0, 0);
  strokeWeight(2);
  triangle(100, 0, 300, 0, 200, 150);
  triangle(100, 400, 300, 400, 200, 250);
  
  //Elipses
  stroke(0);
  strokeWeight(1);
  fill(255);
  ellipse(100, 200, 100, 50);
  ellipse(300, 200, 100, 50);
  noFill();
  
  //Círculos pequeños
  stroke(0);
  strokeWeight(1);
  noFill();
  circle(50, 200, 50);
  circle(350, 200, 50);
}
