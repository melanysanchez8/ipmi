//VARIABLES
int cantidad = 29; // cantidad de círculos
int dx = 0; // desplazamiento mouseX
int dy = 0; // desplazamiento mouseY
int xFinal; // nuevas coordenadas desplazadas
int yFinal; // nuevas coordenadas desplazadas
float rRandom = 255;
float gRandom = 0;
float bRandom = 0;

// FUNCION que NO retorna un valor
void dibujoDeCirculos(){
  // FOR: de los círculos rojos con degradado
  for (int i = 0; i < cantidad; i++){
    float diametro = (i + 1) * 10;
    
    float rojo = map(i, 0, cantidad - 1, 255, 40);
    stroke(rRandom, gRandom, bRandom, rojo); // Rojo con transparencia y RGB
    
    float grosor = map(i, 0, cantidad - 1, 4, 1.2); // Más grueso en el centro
    strokeWeight(grosor);
    ellipse(600, 200, diametro, diametro);
  }
  
  // translate()
  pushMatrix(); // Guarda la posición original
  translate(width / 2, 0); // mitad derecha
  
  stroke(random(mouseX)); // Color ramdom si el mouse se mueve
  strokeWeight(2.5); // Grosor de los puntos
  
  // FOR ANIDADO
  for (int x = 0; x < width; x += 40) {
    for (int y = 0; y < height; y += 40) {
      xFinal = x + dx;
      yFinal = y + dy;
      
      // Condicional: para que se vean los puntos solo si estan dentro de la mitad derecha
      if (xFinal >= 0 && xFinal < width / 2 && yFinal >= 0 && yFinal < height) {
        point(xFinal, yFinal);
      }
      
    }
  }
  
  popMatrix(); // Vuelve a posición original

  image(imagenDeCirculos, 0, 50, 400, 300); // Muestra la imagen

  
}

//FUNCION que RETORNA un valor
void mostrarCoordenadas(){
  //imprime en consola las variables X e Y del mouse
  println( mouseX + " / " + mouseY );

}

// EVENTOS
void mouseMoved(){
  // Mueve los puntos con el movimiento del mouse
  if (mouseX > width / 2) {
    dx = mouseX - 600;
    dy = mouseY - 200;
  }
}

void mousePressed() {
  // Agregá más circulos, haciendo click con el mouse
  if ((cantidad + 1) * 10 <= 400) { // solo si el próximo diámetro no supera el límite
    cantidad++; 
  }
}

void keyPressed(){ 
  if (key == ' ') {
    // Reiniciar a valores originales
    rRandom = 255;
    gRandom = 0;
    bRandom = 0;
    cantidad = 29;
    dx = 0;
    dy = 0;
  } else {
    // Cambia a un color aleatorio
    rRandom = random(255);
    gRandom = random(255);
    bRandom = random(255);
  }
}
