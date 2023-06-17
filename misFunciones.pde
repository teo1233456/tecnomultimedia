void dibujaMiArteOptico(){
  for (int i=0;i<10;i++) {
    rotate (radians(ang));

    rectMode(CENTER);
    float tam = map (i,0,9,400,0);
    if (i%2== 0){
     
      fill(lerpColor (colOrigen, colDestino, map(i,0,9,0,1)));
    }else {
      fill(255);
    }
    pushMatrix();
    ellipse(0,0,tam,tam);
    
    popMatrix();
    
    
  } 
}
