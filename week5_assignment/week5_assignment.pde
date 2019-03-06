//alien boy bee boop bop

float c1;
float c2;
int personSize = 300;
void setup (){
  size (1000,1000);
  background (255);
  noFill();
  colorMode (HSB, 360,100,100);
}

void draw (){
  for (int i = 0; i < 1; i++){
    person(width/2, height/2, personSize);  
  }
  
}

void person (float x, float y, float size){
  
  color c1 = color (random(360),100,100);
  color c2 = color (360,random(100),100);
  color bodyColor = lerpColor(c1,c2,.33);
  
  strokeWeight (20);
  //head
  fill (bodyColor);
  ellipse (x,y/2, size, size);
  
  //body
  fill (bodyColor);
  ellipse (x,y,size,size);

  //right leg
  beginShape();
  vertex(x + size/6, y + size/2.1);
  vertex(x + size/6, y + size/1.2);
  endShape();
  
  //left leg
  beginShape();
  vertex(x - size/6, y + size/2.1);
  vertex(x - size/6, y + size/1.2);
  endShape();
  
  //left arm
  beginShape();
  vertex(x - size/2, y + size/30);
  vertex(x - size/5, y + size/3);  
  endShape();
  
  //right arm
  beginShape();
  vertex(x + size/2, y + size/30);
  vertex(x + size/5, y + size/3);  
  endShape();
  
  //eyes
  fill(255);
  ellipse (x/1.15, y/2 , size/3, size/3);
  ellipse (x*1.13, y/2 , size/3, size/3);

  //pupils
  fill(0);
  ellipse (x/1.15, y/2 , size/10, size/10);
  ellipse (x*1.13, y/2 , size/10, size/10);
  
}
