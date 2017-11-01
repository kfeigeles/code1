PVector position; 
PVector velocity;
PVector acceleration;
int radius = 100 ; 
void setup(){
  size (500, 500); 
  background(0); 
  
  position = new PVector(width/2, height/2); 
  velocity = new PVector(5, 7); 
  acceleration = new PVector(1, -1);
}

void draw(){
  background(0); 
  position.add(velocity); 
  velocity.add(acceleration);
  
  if( position.x >= (width- radius/2) || position.x <= radius/2){
     velocity.x = velocity.x *-1; 
     //acceleration.x = acceleration.x *-1;
  }
  
  if( position.y >= (height-radius/2) || position.y <= radius/2){
    velocity.y = velocity.y *-1 ; 
    //acceleration.y = acceleration.y *-1;
  }
  
  ellipse(position.x, position.y, radius, radius); 
}