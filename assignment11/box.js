function Box(x, y, w, h){
	this.body = Bodies.rectangle(x,y,w,h);
	this.w = w;
	this.h = h;
	World.add(world, this.body);
	
	this.show = function(){
		var pos = this.body.position;
		var angle = this.body.angle;
		//creating the image of the flowers
		push();
		translate(pos.x,pos.y);
		rotate(angle);
		rectMode(CENTER);
		fill(255,255,0);
		rect(10,0,this.w,this.h);
		rect(0,10,this.w,this.h);
		rect(-10,0,this.w,this.h);
		rect(0,-10,this.w,this.h);
		fill(255);
		rect(0,0,this.w,this.h);
		pop();
	}
	
}