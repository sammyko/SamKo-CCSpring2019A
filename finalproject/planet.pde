//thank you dan shiffman
class Planet {
  float radius;
  float angle;
  float distance;
  Planet[] planets;
  float orbitSpeed;
  PVector v;
  
  Planet(float r, float d, float o){
    v = PVector.random3D();
    radius = r;
    angle = random(TWO_PI);
    distance = d;
    v.mult(distance);
    orbitSpeed = o;
  }
  
  void orbit(){
    angle = angle + orbitSpeed;
    if(planets != null){    
      for (int i = 0; i < planets.length; i++){
        planets[i].orbit();
      }
    }
  }
  //use level for the planets moons
  void spawnMoons(int total, int level){
    planets = new Planet[total];
    for (int i = 0; i < planets.length; i++){
      //i like
      float r = radius/(level*3);
      float d = random((radius + r),(radius + r)*2 + 30);
      float o = random(-0.1,0.1);
      planets[i] = new Planet(r, d, o);
      if(level < 4){
         int num = int(random(0,4));
         planets[i].spawnMoons(num, level+1);
      }
    }
  }
  
  //making everything move
  void show(){
    pushMatrix();
    noStroke();
    PVector v2 = new PVector(1,0,1);
    PVector p = v.cross(v2);
    rotate(angle, p.x, p.y, p.z);
    translate(v.x,v.y,v.z);
    fill(220, 220, 220);
    sphere(radius);
    if(planets != null){
      for (int i = 0; i < planets.length; i++){
        planets[i].show();
      }
    }
    popMatrix();
  }
}
