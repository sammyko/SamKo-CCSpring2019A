//create pulsating cubes
int [] rectNum = new int [5];

void setup() {
  size (800,800);
  
  for(int i = 0; i < rectNum.length; i++){
    rectNum[i] = int(random(100,100));
  } 
}

void draw() {
  background (0);
  //change in colors
  fill (255, random(20,200), random (130,200));
  stroke (255,0,0);
  //change in stroke weight
  strokeWeight (random(10,50));
  for(int i = 0; i < rectNum.length; i++){
    //draw ellipse
    rect (i*150+50, 0, rectNum[i], rectNum[i]);
    rect (i*150+50, 150, rectNum[i], rectNum[i]);
    rect (i*150+50, 300, rectNum[i], rectNum[i]);
    rect (i*150+50, 450, rectNum[i], rectNum[i]);
    rect (i*150+50, 600, rectNum[i], rectNum[i]);
    rect (i*150+50, 750, rectNum[i], rectNum[i]);
  }
}
