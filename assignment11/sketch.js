var Engine = Matter.Engine,
	//Render = Matter.Render,
	World = Matter.World,
	Bodies = Matter.Bodies;

var engine;
var world;
var boxes = [];
var ground;

function setup(){
	createCanvas(400,400);
	engine = Engine.create();
	world = engine.world;
	Engine.run(engine);
	ground = Bodies.rectangle(200,height,width,10, { isStatic: true }); World.add(world,[ground]);
}

//you have to press in order to create the flowers
function mouseDragged(){
	boxes.push(new Box(mouseX,mouseY,10,10));
}

//show boxes
function draw(){
	background(51);
	for (var i = 0; i < boxes.length; i++){
		boxes[i].show();
	}
	line(0, height, width, height);


}