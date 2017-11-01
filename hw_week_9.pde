PVector position;
int r = 100;

void setup(){
  size(500, 500);
  background(0);
  frameRate(100);

  position = new PVector(0, 0);
}

void draw(){
  //position.x = r*cos(frameCount*.1) +width/2;
  position.x += 1;
  position.y = r*sin(frameCount*.1) +height/2;
  
  background(random(0, 255), random(0, 255), random(0, 255));
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(position.x, position.y, r, r);
  r += 1;
  if(r > width/2){
    background(0);
    position.x = 0;
    r = 0;
  }
}