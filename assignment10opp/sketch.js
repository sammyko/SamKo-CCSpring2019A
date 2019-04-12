//credit towards thecodetrain
let particles = [];

function setup(){
	createCanvas(800,500);	
}

function draw(){
	background(0);
	let p = new Particle();
	particles.push(p);	
	for(let i = particles.length-1; i >= 0; i--){
		particles[i].update();
		particles[i].show();
		if (particles[i].finished()){
			//delete after a while
			particles.splice(i,1);
		}
	}
}

class Particle{
	constructor(){
		this.x = random(0,800);
		this.y = 0;
		this.vx = random(-1,1);
		this.vy = random(-5,-1);
		this.alpha = 255;
		
	}
	
	//part of the splice
	finished(){
		return this.alpha < 0;
		
	}
	
	//how to make them move
	update(){
		this.x -= this.vx;
		this.y -= this.vy;
		this.alpha -= 2;
	}
	
	//star shapes of the opp
	show(){
		noStroke();
		stroke(250,250,0,this.alpha);
		fill(250,250,0,this.alpha);
		ellipse(this.x,this.y,10,30);
		ellipse(this.x,this.y,30,10);
	}
}