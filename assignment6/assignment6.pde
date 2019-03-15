//yellow snowflakes

ArrayList<Flower> flowers = new ArrayList<Flower>();

Vector2D origin; 
void setup(){
  size(800, 500);
  background(0);
  
  origin = new Vector2D(width, 0);
}

void draw(){
  background(0);
  
  flowers.add(new Flower(origin));

  for(int i = 0; i < flowers.size(); i++){
    Flower p = flowers.get(i); 
    p.show(); 
    p.move();
    

    if(p.isDead()){
      flowers.remove(i);
      
    }
  }
}
