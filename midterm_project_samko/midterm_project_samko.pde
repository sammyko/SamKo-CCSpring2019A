ArrayList<Star> stars = new ArrayList<Star>();
Vector2D origin;

//for the floating spaceship
float positionX = 0;
float positionY = 0;
float speedX = 2.0;
float speedY = 5.0;
float radius = 50;
boolean play = true;

void setup(){
  size (800, 800);
  background (0);
  origin = new Vector2D(width,0);
}

void draw(){
  background (105,105,105);

  //drawing of the floating spaceship
  color c1 = color (225, 225, random(225));
  color c2 = color (225, random(225), 255);
  color signalColor = lerpColor(c1,c2,.33);
  fill(255,255,224);
  ellipse(positionX,positionY,radius+30,radius-5);
  fill(220,220,220);
  ellipse(positionX,positionY-10,radius,radius-20);
  fill(signalColor);
  ellipse(positionX+10,positionY+12,radius-40,radius-40);
  ellipse(positionX-10,positionY+12,radius-40,radius-40);
  ellipse(positionX-27,positionY+3,radius-40,radius-40);
  ellipse(positionX+27,positionY+3,radius-40,radius-40);
  strokeWeight(10);
  stroke(255,255,224);
  stroke(signalColor);
  ellipse(positionX,positionY-25,radius-45,radius-45);
  
  //making the spaceship move
    if(positionX > width || positionX < 0.0){
      speedX *= -1;
    }
    if(positionY > height || positionY < 0.0){
      speedY *= -1;
    }
    if(play){
      positionX += speedX;
      positionY += speedY;
    }
  
 
  stars.add(new Star(origin)); 
  for(int i = 0; i < stars.size(); i++){
    Star p = stars.get(i); 
    p.show(); 
    p.move();   
    if(p.isDead()){
      stars.remove(i);     
    }
  }
  noStroke();
  
  spaceMan();
  moon();
  clouds();
}

//spaceman on top of the moon
void spaceMan(){
  fill(255);
  pushMatrix();
  translate (width/2,height/2-200);
  //head
  fill(220,220,220);
  ellipse(0,0,50,50);
  fill(170);

  ellipse(5,0,35,35);
  //rightarm
  noStroke();
  fill(169,169,169);
  ellipse(20,50,15,40);
  //body
  noStroke();
  fill(220,220,220);
  ellipse(0,50,50,60);
  fill(255);
  rect (-5,30, 20,10);
  //legs
  fill(220,220,220);
  ellipse(-10,80,15,30);
  ellipse(10,80,15,30);
  //leftarm
  fill(169,169,169);
  ellipse(-10,50,15,40);  
  popMatrix();
}

//there are two moons
void moon(){
  pushMatrix();
  translate(width/2,height/2);
  fill(255,255,224);
  ellipse (40,0,220,220);
  fill(192,192,192);
  ellipse (0,0,220,220);
  fill (220,220,220);
  ellipse (-10,-10,190,190);
  fill(192,192,192);
  ellipse (50,50,50,50);
  ellipse (40,0,20,20);
  ellipse(-30,-10,45,45);
   
  //eyes
  fill(255);
  ellipse(-10,-45,50,50);
  ellipse(-55,-45,50,50);
  fill(128,128,128);
  ellipse(-10,-45,20,20);
  ellipse(-55,-45,20,20);
  popMatrix();
}

//clouds on the moon
void clouds(){
  fill(255);
  pushMatrix();
  translate(width/2,height/2);
  arc(90, 130, 150, 150,PI,TWO_PI); 
  arc(120, 130, 170, 80,PI,TWO_PI); 
  arc(150, 130, 250, 40,PI,TWO_PI); 

  arc(-190, 50, 50, 50,PI,TWO_PI); 
  arc(-140, 50, 100, 100,PI,TWO_PI); 

  popMatrix();
}


void keyPressed(){
  if(key == ' '){
    play = !play;
  }
}
