PImage miOsitoDePeluche;

void setup(){
  size( 800, 400 );
  
  
  miOsitoDePeluche = loadImage("oso-peluche.jpg");
}

void draw(){
  background( 255 ); 
  fill(224, 176, 118);
  circle(567, 120, 40);
  fill(224, 176, 118);
  circle(631, 120, 40);
  fill(173, 134, 87);
  circle(567, 118, 20);
  fill(173, 134, 87);
  circle(631, 118, 20);
  fill(224, 176, 118);
  ellipse(537, 210, 72, 35);
  fill(224, 176, 118);
  ellipse(670, 210, 72, 35);

  image( miOsitoDePeluche, 0, 100, 400, 200); 
  
  strokeWeight( 1 );
  circle(604, 233, 125);
  ellipse(599, 146, 110, 75);
  fill(232, 197, 155);
  ellipse(600, 170, 50, 30);
  fill(0);
  circle(580, 154, 10);
  fill(0);
  circle(618, 154, 10);
  fill(103, 69, 30);
  ellipse(601, 168, 15, 10);
  fill(224, 176, 118);
  line( 601, 174, 601, 183);
  circle(543, 277, 75);
  circle(654, 275, 75);
  fill(232, 197, 155);
  circle(545, 287, 55);
  fill(232, 197, 155);
  circle(657, 284, 55);
  
  strokeWeight( 1 );
  line(400, 0, 400, 400);
  
  //imprimo en consola las variables X e Y del mouse
  println( mouseX + " / " + mouseY );
}

void mouseMoved(){  //cruz que sigue al mouse cuando se mueve el mouse
  strokeWeight( 1 );
  line( mouseX, 0, mouseX, 400 );
  line( 0, mouseY, 800, mouseY );  
}
