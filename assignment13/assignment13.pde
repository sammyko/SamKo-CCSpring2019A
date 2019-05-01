float posX = 0;
float posY = 0;
float speedX = 3;
float speedY = 3;
PImage logo;

import ddf.minim.*;

Minim minim;
AudioPlayer player;

void setup () {
  size (800,500, P3D);
  minim = new Minim(this);
  background (150);
  logo = loadImage("data/windows.png");
  player = minim.loadFile("data/Wintrap.mp3");
  player.loop();

}

//draw runs in a loop until the end of the sketch
void draw () {
  background (200,120,215);
  image (logo, posX, posY, 200, 200);
  
  //movement of the logo
  posX += speedX;
  posY += speedY;
  
  if(posX >= width || posX <=0){
    speedX *= -1;
  }
  if(posY >= height || posY <=0){
    speedY *= -1;
  }
}
