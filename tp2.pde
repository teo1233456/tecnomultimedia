//Teo Cader
//Comision 3
//Legajo: 93507/4

PImage imagen;
float ang;
color colOrigen, colDestino;
void setup () {
  size(800,400);
  ang=0;
     colOrigen = color(random(255),random(255),random(255));
  colDestino= color(0,255,255);
  imagen=loadImage("miArteOptico.jpg");
}

void draw (){
  background(255);
  image(imagen,0,50);
  translate(600,200);
   dibujaMiArteOptico();
 ang++;
 
  
}
void mousePressed(){
  ang=0;
    colOrigen = color(random(255),random(255),random(255));
  colDestino= color(0,255,255);
}
void keyPressed(){
  if (key == 'h'){
    colorMode(HSB);
  }
  if (key == 'r'){
    colorMode(RGB);
  }
}
