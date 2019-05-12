import ddf.minim.*;
Minim minim;
AudioPlayer lofi;

Planet sun;

void setup() {
  init();
  size(800, 800,P3D);
  //music for mood
  minim = new Minim(this);
  lofi = minim.loadFile("data/lofi.mp3");
  lofi.loop();
  sun = new Planet (100, 0, 0);
  sun.spawnMoons(8, 1);
}

void draw() {
  lights();
  moon();
  pushMatrix();
  translate(width/2, height/2);
  sun.show();
  sun.orbit();
  popMatrix();
  
  pushMatrix();
  translate(width / 2, height / 2);
  translate(x, y);
  rotate(radians(alpha - 180));
  drawRocket();  
  moveRocket();
  popMatrix();
  
  //pushMatrix();
  //translate(-1000,-500,-2500);
  //fill(0,230,0);
  //sphere(100);
  //fill(0,255,0, random(0,100));
  //sphere(120);
  //fill(0,200,0, random(0,255));
  //sphere(150);
  //popMatrix();
}
