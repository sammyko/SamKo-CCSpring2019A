class Flower{
  
  public Vector2D position = new Vector2D(0, 0);
  
  public float lifespan = 400;
  public float x = random(width);
  public float y = 0;
  public float speedX;
  public float speedY = random (5,7);
  public float kolor = color (0, random(255), random(255));


  public Flower(){   
  }
  
  public Flower(Vector2D origin){
    this.position.x = origin.x;
    this.position.y = origin.y;
  }
  

  void move(){
    y = y + speedY;

    if (y > height){
      y = random(-200,-100);
      speedY = random(4,10);
    }
    lifespan -= 5.0; 
  } 
  
  void show(){
    strokeWeight (15);
    stroke(250,250,0,lifespan);
    fill(255, lifespan);
    line(x, y-10, x, y+10);
    line(x-10, y, x+10, y);
  }
  
  //method to check whether the particle is dead
  boolean isDead(){
    return (lifespan < 0.0);
  }
  
  
}
