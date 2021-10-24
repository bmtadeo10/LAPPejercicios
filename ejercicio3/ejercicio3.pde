float posH, tam; // posH = lo q s estira el horizontal, tam = lo q s estira el vertical

void setup(){
size(400,400);
}

void draw(){
background(255);
// Cuadrado "botón"
fill(255);
stroke(1);
rect(20,330,50,50);

// Condición de posH y tam
if(mouseX > 20 && mouseX < 70 &&mouseY > 330 &&mouseY < 380) { //X horizont. Y vertical
    posH = map(mouseX, 20, 70, -20, 400); // map proporciona los puntos en base a mouseX: cnd está en X 20 equivaldrá a -20 y cnd esté en 70 a 400
    tam = map(mouseY, 330, 380, 20, 400); // map proporciona los puntos en base a mouseY...
} // ... cnd está en Y 330 equivaldrá a -20 y cnd esté en 70 a 400 

// Negro q s mueve en horizont.(X)
  fill(0);
  rect(0, 190, posH, 20);
  
// Negro q s mueve en vertic.(Y)
  noStroke();
  fill(0);
  rect(posH, 200-(tam/2), 20, tam);
} // tam nace d la mitad d lo q crece
