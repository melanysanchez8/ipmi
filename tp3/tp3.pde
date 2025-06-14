//LINK DE YOUTUBE: https://youtu.be/9PEzt0bMBso

//VARIABLE DE LA IMAGEN DE REFERENCIA
PImage imagenDeCirculos;

void setup(){
  size( 800, 400 );
  noFill();
  imagenDeCirculos = loadImage("Figura-circulos.jpg"); // Carga la imagen
}

void draw() {
  background(161, 227, 142); // VERDE CLARO
  dibujoDeCirculos(); // FUNCION que NO retorna un valor
  mostrarCoordenadas(); //FUNCION que RETORNA un valor
  
} 
