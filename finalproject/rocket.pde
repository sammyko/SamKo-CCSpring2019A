float x;
float y;
float z;
int alpha = 180;
float angle = 30;

void init() {
  moon();
  x = 180 * cos(radians(alpha));
  y = 180 * sin(radians(alpha));
}

void moon() {
  noStroke();
  background(100,120,200);
  
  //making the sun
  pushMatrix();
  fill(255,255,0);
  translate(width/2, height/2);
  fill(255,255,100);
  sphere(105);
  fill(255,255,224,100);
  sphere(130);
  translate(0,0,-800);
  sphere(500);
  translate(0,0,-1000);
  sphere(1000);
  popMatrix();
}

//making of the rocket
void drawRocket() {
  pushMatrix();
  rotateX(80);
  fill(205,92,92);
  drawCone(120,1,10,50);
  drawCone(120,1,25,50);
  drawCone(120,1,25,50); 
  
  translate(0,0,60);
  fill(255);
  drawCylinder(50,25,70);
  drawCylinder(50,15,90);
  popMatrix();
  
  translate(10,50,30);
  fill(50);
  sphere(10);
  
  translate(50,20,40);
  rotateX(80);
  fill(205,92,92);
  drawCylinder(50,5,40);
  
  fill(0);
  drawCone(120,0,5,75);

  translate(-65,20,5);
  fill(205,92,92);
  drawCylinder(50,5,40);
  fill(0);
  drawCone(120,0,5,75);

  
}


void moveRocket(){
  x = 300 * cos(radians(alpha));
  y = 300 * sin(radians(alpha));
  alpha++;
}

//vormplus
void drawCylinder(int sides, float r, float h)
{
    float angle = 360 / sides;
    float halfHeight = h / 2;
    // draw top shape
    beginShape();
    for (int i = 0; i < sides; i++) {
        float x = cos( radians( i * angle ) ) * r;
        float y = sin( radians( i * angle ) ) * r;
        vertex( x, y, -halfHeight );    
    }
    endShape(CLOSE);
    // draw bottom shape
    beginShape();
    for (int i = 0; i < sides; i++) {
        float x = cos( radians( i * angle ) ) * r;
        float y = sin( radians( i * angle ) ) * r;
        vertex( x, y, halfHeight );    
    }
    endShape(CLOSE);
    
    beginShape(TRIANGLE_STRIP);
    for (int i = 0; i < sides + 1; i++) {
    float x = cos( radians( i * angle ) ) * r;
    float y = sin( radians( i * angle ) ) * r;
    vertex( x, y, halfHeight);
    vertex( x, y, -halfHeight);    
    }
    endShape(CLOSE); 
} 


void drawCone( int sides, float r1, float r2, float h)
{
    float angle = 360 / sides;
    float halfHeight = h / 2;
    // top
    beginShape();
    for (int i = 0; i < sides; i++) {
        float x = cos( radians( i * angle ) ) * r1;
        float y = sin( radians( i * angle ) ) * r1;
        vertex( x, y, -halfHeight);
    }
    endShape(CLOSE);
    // bottom
    beginShape();
    for (int i = 0; i < sides; i++) {
        float x = cos( radians( i * angle ) ) * r2;
        float y = sin( radians( i * angle ) ) * r2;
        vertex( x, y, halfHeight);
    }
    endShape(CLOSE);
    // draw body
    beginShape(TRIANGLE_STRIP);
    for (int i = 0; i < sides + 1; i++) {
        float x1 = cos( radians( i * angle ) ) * r1;
        float y1 = sin( radians( i * angle ) ) * r1;
        float x2 = cos( radians( i * angle ) ) * r2;
        float y2 = sin( radians( i * angle ) ) * r2;
        vertex( x1, y1, -halfHeight);
        vertex( x2, y2, halfHeight);
    }
    endShape(CLOSE);
}
