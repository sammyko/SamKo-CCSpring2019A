void setup(){
  size (600,800);
  background (255,255,224);
  
  
  noStroke ();
  fill (0);
  //black rect
  rect (170, 340, 100, 100);
  //black tri
  triangle (170,340,170,500,430,500);
  
  fill(193,226,217);
  rect (190,280,100,70);
  
  fill (236,251,253);
  //blue rect hor
  rect (190,420,206,58);
  //blue rect vert
  rect (190,340,100,130);
  
    //blue box next to gray box
  fill (0,118,114);
  rect (190,145,200,120);
  
  //top light bluish triangle
  fill (193,243,242);
  triangle (240,280,350,280,240,180);
  
  
  //gray block
  fill (201,219,218);
  rect (335,130,100,150);
  triangle (350,180,350,280,240,180);
  
  //big triangle darker light green
  fill(127,208,186);
  triangle (240,415,390,180,390,415);
  
  
  fill (0);
  rect (230,280,130,80);
  
  
  //two smaller darker light green
  fill(127,208,186);
  triangle (240,415,321,280,240,280);
  //smalltriangle
  triangle (240,280,190,280,290,330);
  
  fill (201,252,216);
  //light green triangle and rectanlg ecombination
  triangle (230,420,280,340,345,420);
  rect (280,340,17,20);
  
  
  //yellow blocks
  fill (237,246,105);
  rect (297,320,30,20);
  rect (310,265,25,75);
  
  //brown blocks
  fill (81,63,45);
  rect (297,295,13,25);
  rect (280,295,17,45);
  
  fill (95,191,187);
  triangle (167,265,235,265,235,190);

}

void draw(){


}
