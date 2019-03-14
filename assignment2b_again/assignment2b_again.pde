int num = 10; //number of squares
float radius;
float[] positionX = new float[num];
int positionY = 0;
float[] speedX = new float[num];
float[] speedY = new float[num];
void setup(){
  size (800,800);
  background (0);
  stroke(0);
  rectMode(CENTER);
  
    for(int i = 0; i < num; i++){
    positionX[i] = random(100, 100);

    
    //give the ith ball a random x,y speed
    speedX[i] = random(-10,10);
    speedY[i] = random(-10,10);
  }
}

void draw(){
  noStroke();
  radius = width/num;
  background(0);

  for(int i = 0; i < num; i++){    

  for (float x=0; x < width; x += radius){
    fill (255 - random (0,255), 255, 0);
    rect (positionX[i], positionY, radius + random(0,100), radius + random(0,100));
  }

  for (float x=0; x < width; x += radius){
    fill (0, 255 - random (0,255), 255);
    rect (positionX[i], positionY, radius + random(0,70), radius + random(0,70));
  }

  for (float x=0; x < width; x += radius){
    fill (255, 0, 255 - random (0,255));
    rect (positionX[i], positionY, radius + random(0,15), radius + random(0,15));
  }


    if(positionX[i] > width || positionX[i] < 0){
      speedX[i] *= -1;
      
    }
    if(positionY > height || positionY < 0){
      speedY[i] *= -1;
    }
    
    positionX [i] += speedX [i];
    positionY += speedY[i];
  
  }

}

void keyPressed(){
  if(keyCode == RIGHT){
    positionY +=100;
  }else if(keyCode == LEFT){
    positionY -=100;
  }
}
