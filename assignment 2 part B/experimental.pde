int numRect = 1;
//define container array for positions and speeds
float[] positionX = new float[numRect];
float[] positionY = new float[numRect];
float[] speedX = new float[numRect];
float[] speedY = new float[numRect];

float angle;
float jitter;

void setup() {
  size (800,800);
  background (0);
  rectMode (CENTER);
  //populate our arrays, this is usually done in setup
  //nameArray.length will give you length of the array
  for(int i = 0; i < numRect; i++){
    //give the ith ball a random x,y speed
    speedX[i] = 0.5;
    speedY[i] = 0.5;
  }
  
}

void draw() {
  stroke (0);
  background (0);
  //random jitter
  if (second() % 2 == 0) {  
    jitter = 0.1;
  }
  angle = angle + jitter;
  float c = sin(angle);
  rotate(c);
  
  
  //what we learned in class with the boucing ball on wall
  for(int i = 0; i < numRect; i++){
    rect (positionX[i], positionY[i], 300, 300);
    if(positionX[i] > width || positionX[i] < 0){
      speedX[i] *= -1;
      fill(random(255), random(255), random(255));
    }
    if(positionY[i] > height || positionY[i] < 0){
      speedY[i] *= -1;
    }
    //move the ellipse
    positionX [i] += speedX [i];
    positionY [i] += speedY[i];
  
  };  


}
