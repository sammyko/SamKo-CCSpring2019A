/*
 "328" : {
 "title" : "Wall Drawing #328 (1980)",
 "description" : "On a black wall, a white circle within which are white vertical parallel lines, and a white parallelogram within which are white horizontal parallel lines. The vertical lines within the circle do not enter the parallelogram, and the horizontal lines within the parallelogram do not enter the circle."
  },
*/

void setup (){
  size (1000,1000);
  background (0);

  stroke (255);
  fill (0);
  strokeWeight (30);
  ellipse (width/2,height/2,503.5,503.5);
  rect (width/4, height/4, 200,200);
  
  //vertical
  line (500,750,width/2,250);
  line (2*width/3,685,2*width/3,320);
  //horizontal line
  strokeWeight (30);
  stroke(255);
  line (430,height/3,250,height/3);
  line (430,290,250,290);
}
  
