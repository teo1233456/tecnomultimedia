PImage retrato;

void setup() {
 size(800,400);
 retrato = loadImage("imagenretrato.jpg");
background(255,255,255);
}
void draw() {

 image(retrato,0,0);
  //cabeza de kyle-
  
  fill(252,218,170);
  circle(400,200,150);
  
  //gorro de kyle-
  
  fill(86,193,36);
  rect(325,95,150,80);
  fill(86,193,36);
  ellipse (320,180,35,80);
  fill(86,193,36);
  ellipse (480,180,35,80);

  fill(28,149,51);
  rect(332,130,135,50);
  
  // cara de kyle-
 
  fill(255);
  ellipse(375,200,55,50);

  fill(255);
  ellipse(426,200,55,50);
  fill(0);
  circle(380,200,5);
  fill(0);
  circle(420,200,5);
  arc(400,250,20,1,400,700);
  

  
}
