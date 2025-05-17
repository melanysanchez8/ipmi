//VARIABLES
String estado;
String titulo, subTitulo; // PANTALLA 1 Y 5
int e;
color fondoPantalla2;
//IMAGENES
PImage arbol;
PImage pasto;
PImage nube1;
PImage nube2;
PImage nube3;
PImage imagen1;
PImage imgPantalla3; 
PImage mesaMinecraft;
PImage bloque1;
PImage bloque2;
PImage bloque3;
PImage imgPantalla4;
PImage espada;
PImage hacha;
PImage pico;
//ANIMACIÓN
int posXtitulo, posXsubTitulo;
int tamTexto, tamSubTexto;

float posXimagen;
float tamImagen;

float tamImagenNubeX, tamImagenNubeY;

float xNube1, xNube2, xNube3;
float velx1, velx2;

float posX, posY, posX1, posY1, posX2, posY2, posX3, posY3;

color colorDeTexto;
//FUENTES
PFont nuevaFuente; //PARA LOS SUBTITULOS
PFont nuevaFuenteImportada; //PARA LOS TITULOS
PFont nuevaFuenteTextos; //PARA LOS TEXTOS

void setup() {
  //GENERAL
  size( 640, 480 );
  textSize( 32 );
  textAlign( CENTER, CENTER );
  
  //------------------------PANTALLA 1
  titulo = "Minecraft";
  subTitulo = "¡Lo mas importante es aprender \n a fabricar herramientas: \n utilizando una mesa de trabajo  \n para crear herramientas básicas \n como picos y espadas.!";
  //ANIMACIÓN
  posXtitulo = 0;
  posXsubTitulo = 0;
  tamTexto = 1;
  tamSubTexto = 1;
  posXimagen = 0;
  tamImagen = 1;
  tamImagenNubeX = 150;
  tamImagenNubeY = 100;
  xNube1 = 0;
  xNube2 = 480;
  velx1 = 1;
  velx2 = -1;
  fondoPantalla2 = color( 51, 50, 170 ); //AZUL
  posX = random(width);
  posY = random(height);
  posX1 = random(width);
  posY1 = random(height);
  posX2 = random(width);
  posY2 = random(height);
  posX3 = random(width);
  posY3 = random(height);
  colorDeTexto = color(255); //BLANCO
  //IMAGENES
  arbol = loadImage("arbol-minecraft.png");
  pasto = loadImage("pasto-minecraft.jpg");
  nube1 = loadImage("nube-1.png");
  nube2 = loadImage("nube-2.png");
  nube3 = loadImage("nube-3.png");
  imagen1 = loadImage("imagen1.png");
  mesaMinecraft = loadImage("Mesa-crafteo.png") ;
  imgPantalla3 = loadImage("fondo5.jpg");
  bloque1 = loadImage("bloque1.png");
  bloque2 = loadImage("bloque2.png");
  bloque3 = loadImage("bloque3.png");
  imgPantalla4 = loadImage("fondo2.jpg");
  espada = loadImage("espada.png");
  hacha = loadImage("hacha.png");
  pico = loadImage("pico.png");
  //FUENTES
  nuevaFuenteImportada =  createFont("Minecrafter.Alt.ttf", 32);
  
  //-------------------PANTALLA 2
  
  //IMAGENES
  
  //FUENTES
  nuevaFuenteTextos = loadFont("ComicSansMS-20.vlw");
  nuevaFuente = loadFont("fuente1.vlw");
  

  //asigno valor por defecto a mis variables
  estado = "pantalla-1";
  e = 1;
}


void draw() {
  //------------------------------------------PANTALLA 1
  if ( e == 1 ) {
    background( 149, 154, 242 );  //CELESTE
    
    if( frameCount == (60*10) ){
      e = 2;
    }
    
    
    //ANIMACIÓN PARA QUE CRESCAN EL TITULO Y LA IMAGEN1
    textFont(nuevaFuenteImportada);
  
    posXtitulo = posXtitulo + 1;
  
    if( tamTexto <= 55 ){
      tamTexto = tamTexto + 1;
    }
    textSize( tamTexto );
    
    posXimagen = posXimagen + 1;
    
    if (tamImagen <= 150) { 
      tamImagen = tamImagen + 1;
    }
    
    //ANIMACIÓN DE LAS NUBES PARA QUE REBOTEN EN LOS BORDES
    xNube1 = xNube1 + velx1;
    
    if(xNube1 >= width-tamImagenNubeX/1){ //BORDE DERECHO
      velx1 = -1;
    }
    if(xNube1 <= 0+tamImagenNubeY/8){ //BORDE IZQUIERDO
      velx1 = 1;
    }
    
    xNube2 = xNube2 + velx2;
    
    if(xNube2 <= 0+tamImagenNubeY/8){ //BORDE IZQUIERDO
      velx2 = 1;
    }
    
    if(xNube2 >= width-tamImagenNubeX/1){ //BORDE DERECHO
      velx2 = -1;
    }
    
    text(titulo, 320, 160);
    image(imagen1, 250, 280, tamImagen, tamImagen);
    image(nube1, xNube1, 20, tamImagenNubeX, tamImagenNubeY); // NUBE IZQUIERDA
    image(nube3, xNube2, 20, tamImagenNubeX, tamImagenNubeY); // NUBE DERECHA
    image(arbol, 300+140, 200, 200, 250); // ARBOL DERECHO
    image(arbol, 10, 188, 236, 250); // ARBOL IZQUIERDO
    image(pasto, 0, 420, 800, 200);
    
    
    //-------------------------------------------PANTALLA 2 !! TOCAR CUALQUIER TECLA PARA QUE CAMBIE EL COLOR DEL FONDO !!
  } else if ( e == 2 ) {
    background(fondoPantalla2);  //AZUL

    if( frameCount == (60*20) ){
      e = 3;  
    }
    
    //SUBTITULO
    fill(30);
    textFont(nuevaFuente, 38);
    text("¡Modos de Juego!", 300, 140);

    
    //RECTAGULO PARA LOS TEXTOS
    fill(200);
    rect(40, 183, 200, 50);  // RECTAGULO CHICO
    rect(340, 180, 250, 100); // RECTANGULO GRANDE
    rect(40, 183 + 120, 200, 50);
    rect(340, 180 + 120, 250, 100);
    //TEXTOS
    fill(0);
    textFont(nuevaFuenteTextos, 18);
    text("Modo Creativo", 138, 205);
    text("tienes acceso ilimitado a \n todos los bloques y objetos. \n Ideal para construir sin \n restricciones.", 467, 229);
    text("Modo Supervivivencia", 138, 205 + 120);
    text("debes recolectar recursos,\n gestionar tu salud y hambre,\n y defenderte de enemigo.", 467, 229 + 120);

    //ANIMACIÓN DE LAS NUBES PARA QUE REBOTEN EN LOS BORDES
    xNube1 = xNube1 + velx1;
    
    if(xNube1 >= width-tamImagenNubeX/1){ //BORDE DERECHO
      velx1 = -1;
    }
    if(xNube1 <= 0+tamImagenNubeY/8){ //BORDE IZQUIERDO
      velx1 = 1;
    }
    
    xNube2 = xNube2 + velx2;
    
    if(xNube2 <= 0+tamImagenNubeY/8){ //BORDE IZQUIERDO
      velx2 = 1;
    }
    
    if(xNube2 >= width-tamImagenNubeX/1){ //BORDE DERECHO
      velx2 = -1;
    }
    
    
    fill(0);
    image(nube1, xNube1, 20, tamImagenNubeX, tamImagenNubeY); // NUBE IZQUIERDA
    image(nube3, xNube2, 20, tamImagenNubeX, tamImagenNubeY); // NUBE DERECHA
    image(pasto, 0, 420, 800, 200);
    

    
    //----------------------------------------------------PANTALLA 3 !!TOCAR CUALQUIER TECLA PARA QUE CAMBIE DE POSICION LOS BLOQUES Y LA MESA !!
  } else if ( e == 3 ) {
    
    if( frameCount == (60*30) ){
      e = 4;
    }
    
    
    image(imgPantalla3, 0, 0, 640, 480);
    image(mesaMinecraft, posX, posY, 100, 100);
    image(bloque1, posX1, posY1, 60, 60);
    image(bloque2, posX2, posY2, 50, 50);
    image(bloque3, posX3, posY3, 80, 80);
    
    fill(5, 10, 60, 50);
    rect(22, 147, 280, 280);
    rect(351, 150, 280, 280);
    fill(255);
    textFont(nuevaFuenteTextos, 22);
    text("Después de elegir \n el modo de juego,\n podes empezar a explorar  \n diferentes biomas \n como bosques,\n desiertos y montañas.", 160, 259);
    text("También es \n momento de comenzar a \n recolectar recursos como \n madera, piedra y minerales.\n Que son esenciales \n para fabricar herramientas.", 492, 253);
    //-----------------------------------------------PANTALLA 4 ¡¡TOCAR LA TECLA 'c' PARA QUE CAMIE EL COLOR DE LAS LETRAS!!
    //QUISE QUE SEA UN RANDOM DE GRISES OSCUROS(PARA QUE SE NOTE LO ESCRITO), PERO NO ME SALIO MUY BIEN :(
  } else if ( e == 4 ) {
    
    if( frameCount == (60*40)){
      e = 5;
    }
    
    image(imgPantalla4, 0, 0, 640, 480);
    
    
    fill(50, 100, 60, 200);
    ellipse(136, 397, 264, 164);
    ellipse(500, 376, 262, 180);
    fill(colorDeTexto);
    textFont(nuevaFuenteTextos, 22);
    text("Construir estructuras \n desde simples \n casas hasta complejos \n mecanismos.", 144, 305+100);
    text("Sobrevivir \n enfrentándote a \n criaturas como zombis, \n creepers, arañas \n y esqueletos.\n", 144+354, 395);
    
    posXtitulo = posXtitulo + 1;
  
    if( tamTexto <= 55 ){
      tamTexto = tamTexto + 1;
    }
    textSize( tamTexto );
    
    posXimagen = posXimagen + 1;
    
    if (tamImagen <= 150) { 
      tamImagen = tamImagen + 1;
    }
    
    //ANIMACIÓN DE LAS NUBES PARA QUE REBOTEN EN LOS BORDES
    xNube1 = xNube1 + velx1;
    
    if(xNube1 >= width-tamImagenNubeX/1){ //BORDE DERECHO
      velx1 = -1;
    }
    if(xNube1 <= 0+tamImagenNubeY/8){ //BORDE IZQUIERDO
      velx1 = 1;
    }
    
    xNube2 = xNube2 + velx2;
    
    if(xNube2 <= 0+tamImagenNubeY/8){ //BORDE IZQUIERDO
      velx2 = 1;
    }
    
    if(xNube2 >= width-tamImagenNubeX/1){ //BORDE DERECHO
      velx2 = -1;
    }
    
    image(nube1, xNube1, 20, tamImagenNubeX, tamImagenNubeY); // NUBE IZQUIERDA
    image(nube3, xNube2, 20, tamImagenNubeX, tamImagenNubeY); // NUBE DERECHA
    
    //---------------------------------------PANTALLA 5 ¡¡REINICIAR: AL APRETAR LA TECLA 'r' ó 'R', TE LLEVARA DE VUELTA A LA PANTALLA 1!!
  } else if (e == 5){
    background( 27, 188, 154 ); //CIAN
    
    if( frameCount == (60*50)){
      e = 5;
    }
    
    //SUBTITULO
    textFont(nuevaFuente, 32);
    
    posXsubTitulo = posXsubTitulo + 1;
  
    if( tamSubTexto <= 30 ){
      tamSubTexto = tamSubTexto + 1;
    }
    textSize( tamSubTexto );
    

    //ANIMACIÓN DE LAS NUBES PARA QUE REBOTEN EN LOS BORDES
    xNube1 = xNube1 + velx1;
    
    if(xNube1 >= width-tamImagenNubeX/1){ //BORDE DERECHO
      velx1 = -1;
    }
    if(xNube1 <= 0+tamImagenNubeY/8){ //BORDE IZQUIERDO
      velx1 = 1;
    }
    
    xNube2 = xNube2 + velx2;
    
    if(xNube2 <= 0+tamImagenNubeY/8){ //BORDE IZQUIERDO
      velx2 = 1;
    }
    
    if(xNube2 >= width-tamImagenNubeX/1){ //BORDE DERECHO
      velx2 = -1;
    }

    fill(18, 126, 73);
    text(subTitulo, 311, 264);
    image(nube1, xNube1, 20, tamImagenNubeX, tamImagenNubeY); // NUBE IZQUIERDA
    image(nube3, xNube2, 20, tamImagenNubeX, tamImagenNubeY); // NUBE DERECHA
    image(pasto, 0, 420, 800, 200);
    image(espada, random(width-20), random(height-20), 40, 40);
    image(hacha, random(width-20), random(height-20), 40, 40);
    image(pico, random(width-20), random(height-20), 40, 40);
    
  }
 
}

void keyPressed() {
  //----------------------------!! TOCAR CUALQUIER TECLA PARA QUE CAMBIE EL COLOR DEL FONDO !!
  fondoPantalla2 = color(random(255), random(255), random(255));
  //!!TOCAR CUALQUIER TECLA PARA QUE CAMBIE DE POSICION LOS BLOQUES Y LA MESA !!
  posX = random(width - 100);
  posY = random(height - 100);
  posX1 = random(width - 60);
  posY1 = random(height - 60);
  posX2 = random(width - 50);
  posY2 = random(height - 50);
  posX3 = random(width - 80);
  posY3 = random(height - 80);
  //------------------------------¡¡TOCAR LA TECLA 'c' PARA QUE CAMIE EL COLOR DE LAS LETRAS!!
  if(key == 'c'){
  colorDeTexto = color(random(128));
  }
  //-------¡¡REINICIAR: AL APRETAR LA TECLA 'r' ó 'R', TE LLEVARA DE VUELTA A LA PANTALLA 1!!
  // || = OR, si se cumple una de las dos condiciones se ejecuta el if
  if ( key == 'r' || key == 'R' ) {
    background( 360 );
    e = 1;
  }
}
