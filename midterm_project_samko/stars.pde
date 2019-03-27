class Star{

  public Vector2D position = new Vector2D(0, 0);
  
  public float lifespan = 500;
  public float x = random(width);
  public float y = random(height);
  public float speedX;
  public float speedY = random (5,7);
  public float angle = 0;

  public Star(){   
  }
  
  public Star(Vector2D origin){
    this.position.x = origin.x;
    this.position.y = origin.y;
  }
  

  void move(){
    if (y > height){
      y = random(-200,-100);
      speedY = random(9,10);
    }
    lifespan -= 15.0; 
  } 
  
  void show(){
    strokeWeight (5);
    stroke(240,230,140,lifespan);
    fill(255, lifespan);
    pushMatrix();
    translate (x,y);
    rotate ((radians(angle)));
    ellipse(5,5,5,5);
    popMatrix();
    angle += random(0,10);
  }
  
  //method to check whether the particle is dead
  boolean isDead(){
    return (lifespan < 0.0);
  }

}
