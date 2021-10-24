String[] text; // Variable que almacena cadenas de caracteres, para poder escribir texto

PFont font; // Variable que almacena el tipo de fuente

float pos; // Variable para posición (pos) de text = nº decimal
int i; // Variable tipo nº entero: i recorrerá la lista text así text[i] 

float angleRotate = 0.0; // Variable rotación

void setup() {
  size(400,400); // Creación y tamaño ventana
  
  font = loadFont("AdobeFanHeitiStd-Bold-48.vlw"); // Cargar tipografía
  text = new String[14]; // Variable cadena de texto
  text[0] = "Con";  // Almacenado (escritura) texto
  text[1] = "estas";
  text[2] = "palabras";
  text[3] = "que";
  text[4] = "vienen";
  text[5] = "y";
  text[6] = "van";
  text[7] = "finalizamos";
  text[8] = "el";
  text[9] = "curso";
  text[10] = "de";
  text[11] = "Processing";
  text[12] = " ";
  textSize(60); // Tamaño texto
  
  i=0; // i=0; text[0]="Con" de entrada-al empezar
  pos=0; // pos=inicio de la pantalla
}

void draw(){
  background(255,255,163); // Color fondo
  
  fill(0); // Color texto
  
  if (i<13){ //Si i<13, osea solo en la lista
    if (i%2 == 0){ // Si al dividir i entre 2 el resto es 0...
      text(text[i], pos, 214); // Palabra en text[i] se ubica en 214 d altura y la horizontal pos
      pos=pos+3; // ...suma a pos 2 y reasignarselo a pos; pos es (el valor previo de pos)+2  ->  también se puede escribir como pos+=2
    }
    if (i%2 == 1){ // Si al dividir i entre 2 el resto es 1...
      text(text[i], pos, 214); // Palabra en text[i] se ubica en 214 d altura y la horizontal pos
      pos=pos-3; // ...resta a pos 2 y reasignarselo a pos; pos es (el valor previo de pos)-2  ->  también se puede escribir como pos-=2
    }
    
    if (pos + textWidth(text[i]) >= 400){ // Si la posición del texto en horizontal + el ancho de text[i](la palabra que está en la posición i en ese momento) >=(es mayor o igual que)400(llega al final)...
      // pos = 0;  //...el valor que define la posición horizontal del texto vuelve a 0-al inicio de la pantalla
      i++;  //...i va aumentando de valor(para recorrer la lista text-pasando de una palabra a la siguiente)
      if (i<13){ //Si
        pos = 400 - textWidth(text[i]); //...pos pasa a ser 400(valor del final de la ventana) - el ancho de la palabra que toca; para que parezca que se convierte en la nueva palabra y rebota
      }  
    }
    if (pos <= 0){ // Si la palabra está en el principio de la pantalla...
      i++;
      pos = 0; //...pos pasa a ser 0(valor principio de la ventana)
    }
  }
  
  if (i == 13){ // Si i es 13; osea nos salimos de la lista...
    pushMatrix(); // Método junto con popMatrix() para sacar el origen de coordenadas de su sitio
    translate(200, 200); // Movemos el eje de coordenadas
    rotate(radians(angleRotate)); // El eje de coordenadas rota(en radianes(nº en grados)); para rotate necesitamos medir en radianes, por lo que convertimos los grados a radianes para que funcione rotate
    text("Hasta pronto", -(textWidth("Hasta pronto")/2), 0); // Lo que rota es Hasta pronto y el eje de rotación está en la mitad del texto hacia la izquierda
    popMatrix(); // Ancla pushMatrix y lo muestra en pantalla
  }
  angleRotate += 4; // Rota ?? 
}

void mouseClicked(){ // Al clickar...
    i=0; // ...vuelve al inicio
    pos=0; // ...vuelve al inicio
}
