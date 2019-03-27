//tried to make a class for the spaceship, but it would not work.
//leaving it here to show my attempt at it

//class SpaceShip{

//  public float positionX = 0;
//  public float positionY = 0;
//  public float speedX = 1;
//  public float speedY = 1;
//  public float radius = 50;
  
  
//  public SpaceShip(){
//  }
  
//  public SpaceShip(float x, float y){
//    positionX = x;
//    positionY = y;
//  }

//  public SpaceShip(float x, float y, float vx, float vy, float radius){
//    //set position and velocity
//    positionX = x;
//    positionY = y;
//    speedX = vx;
//    speedY = vy;
    
//    //set radius and color. Notice how radius and fillColor share names between parameters and fields
//    //you can use this. to alleviate this confusion
//    this.radius = radius;

//  }
  
//  public void display(){
//  color c1 = color (225, 225, random(225));
//  color c2 = color (225, random(225), 255);
//  color signalColor = lerpColor(c1,c2,.33);

//  fill(255,255,224);
//  ellipse(positionX,positionY,radius+30,radius-5);
//  fill(220,220,220);
//  ellipse(positionX,positionY-10,radius,radius-20);
//  fill(signalColor);
//  ellipse(positionX+10,positionY+12,radius-40,radius-40);
//  ellipse(positionX-10,positionY+12,radius-40,radius-40);
//  ellipse(positionX-27,positionY+3,radius-40,radius-40);
//  ellipse(positionX+27,positionY+3,radius-40,radius-40);
//  strokeWeight(10);
//  stroke(255,255,224);
//  line(positionX,positionY-35,0,-15);
//  stroke(signalColor);
//  ellipse(positionX,positionY-35,radius-45,radius-45);
//  }
  
//  public void move(){
//    positionX += speedX;
//    positionY += speedY;
//  }
  
//  public void collision(){
//    if(positionX > width || positionX < 0){
//      speedX *= -1;
//    }
//    if(positionY > height || positionY < 0){
//      speedY *= -1;
//    }
//  }

//}
