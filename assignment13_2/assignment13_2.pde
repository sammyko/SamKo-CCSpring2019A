//minim setup
import ddf.minim.*;
Minim minim;
AudioPlayer spanish;
AudioPlayer cat;
AudioPlayer player;
//values
PImage dora;
PImage swiper;
PImage background;

void setup(){
  size(1000, 500, P3D);
  minim = new Minim(this);
  //sounds for the characters
  spanish = minim.loadFile("data/lol.wav");
  spanish.setGain(20);
  cat = minim.loadFile("data/meow.wav");
  
  //background image
  background = loadImage("data/forest.jpg");
  background.resize(1000,500);
  //images of each character
  dora = loadImage("data/dora.png");
  swiper = loadImage("data/swiper.png");
  
  //themesong in background
  player = minim.loadFile("data/Dora The Explorer Theme Song.mp3");
  player.loop();
  player.setGain(-20);

}

void draw(){
  background(background);
  image(dora,100,150,150,200);
  image(swiper,700,150,200,200);
  
}

//press to activate sounds of each character
void mousePressed(){
  if(mouseX > 100 && mouseX < 250 && mouseY > 150 && mouseY < 350){
  spanish.rewind();
  spanish.play();
  }  
  if(mouseX > 700 && mouseX < 900 && mouseY > 150 && mouseY < 350){
  cat.rewind();
  cat.play();
  }   
}
