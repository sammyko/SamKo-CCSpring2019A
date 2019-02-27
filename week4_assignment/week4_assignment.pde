//im making the sharingan from naruto


void setup (){
  size (800,800);
  background (255);
  
}

void draw (){
  background (255); 
  
  
    //blackoutline outer
  pushMatrix ();
  translate (width/2,height/2);
  fill (0);
  ellipse (0,0,400,400);
  popMatrix ();
  
  
  color c1 = color (220,20,60);
  color c2 = color (139,0,0);
  //inner red color gradient; they are two different types of red
  noStroke ();
  for (float radius = 340; radius > 0; radius --){
    color circleColor = lerpColor (c1,c2, radius/340);
    fill (circleColor);
    ellipse (width/2, height/2, radius, radius);
  }
  
  //inner pupil
  pushMatrix ();
  translate (width/2,height/2);
  fill (0);
  ellipse (0,0,55,55);
  
  stroke (10);
  noFill ();
  ellipse (0,0,220,220);
  popMatrix ();

  //spinning ball action
  pushMatrix();
  fill (0);
  translate (width/2,height/2);
  rotate (radians (frameCount % 360));
  innerBalls (3, 110);
  popMatrix();
  
}

//spinning inner balls 
void innerBalls (int numEllipse, float radius){
  for (int i = 0; i < numEllipse; i++){
    
     float x = radius * cos(radians(360/numEllipse + i*360/numEllipse));
     float y = radius * sin(radians(360/numEllipse + i*360/numEllipse));
     
     ellipse (x,y, 50, 50);
  }
}
