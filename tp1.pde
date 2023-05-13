PImage imagen, imagen2, imagen3;
int estado;
int Fotograma;
PFont mifuente;
int startX = 0;
int stopX = 400;
int startY= 0;
int stopY= 230;

float x;
float y= startY;
float step= 0.01;
float pct=0.0;
//
void setup () {
  size (640, 480);
  estado= 0;
  x= 0;
  frameRate(30); 
mifuente = createFont("PressGothicPro.ttf", 35);
imagen = loadImage("The_Last_of_Us_capa.png");
imagen2 = loadImage("capturagameplay.jpg");
imagen3 = loadImage("imagen_17.jpg");
}

void draw () {
  textSize(35);
  background (212,131,73);
  textFont(mifuente);

if(pct<1.0){
  x=startX+((stopX - startY)*pct);
  y=startY+((stopY - startX)*pct);
  pct +=step;
  }
  if ( estado==0 ) {
    //pantalla inicio//
     image (imagen, 0, 80);
    
    text ("UNA OBRA" ,x,y);
    text ("MAESTRA AUDIOVISUAL", x, y+30);
    
   
  } else if ( estado==1 ) {
    //Segunda//
    
textSize(20);
text("The Last Of Us es una saga de videojuegos creada por la compañía Naughty Dog en 2013", x-380,y-130);
    text("ambientada en un mundo postapocaliptico, y que brilla en demasiados aspectos: ",x-380,y-110);
    text("ya sea en cuanto al potencial gráfico, el guión tan bien hecho y/o las mecánicas  y físicas tan trabajadas,",x-380,y-90);
    text("que hacen que mucha gente lo considere una obra maestra.",x-380,160);
image(imagen2,30,200);

    

  } else if ( estado==2 ) {
    //Tercera//
ellipse(580,300,100,100); 
image(imagen3,x-360,y-150);
    Fotograma++;
    if (Fotograma>=150) {
      estado =0;
      Fotograma=0;
    }
  
    }
  }
  void mousePressed( ) {

    if ( estado==0 ) {
      estado = 1;
    } else if ( estado==1 ) {
      estado = 2;
  
    } else if ( estado==2 ) {
      estado = 0;
    }

  }
