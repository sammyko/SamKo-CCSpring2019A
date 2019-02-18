/*  "017" : {
    "title" : "Wall Drawing #17 (1969)",
    "description" : "Four-part drawing with a different line direction in each part."
*/
void setup() {
  size (800,800);
  background (255);

  stroke (5);
  line (width/2,0,width/2,height);
  line (0,height/2,width,height/2);


   //bottom left
  for (int i = 1; i < 100; i++) {
  line(i*10, width/2, i*10, width); 
}
  fill(255);
  rect (width/2,height/2,width,height);
   
  //top left
  for (int i = 1; i < 100; i = i+1) {
  line(width/2 - i*10, height/2, width/2, height/2 - i*10);
}
  //bottom right
  for (int i = 1; i < 100; i++) {
  line(width + i*10, height/2 + i*10, width/2, height/2 + i*10);
}
  //top right
  for (int i = 1; i < 100; i++) {
   line(width/2 + i*10, height/2, width/2, height/2 - i*10);
  }

}
