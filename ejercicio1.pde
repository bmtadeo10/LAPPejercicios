PImage foto;

void setup() {
  size(400, 400);
  foto = loadImage("canales.jpg");
}

void draw() {
  background(255);
  image(foto, 50, 50);
}
