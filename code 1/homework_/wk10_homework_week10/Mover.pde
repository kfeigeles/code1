class Mover{
  PVector position; 
  PVector velocity; 
  PVector acceleration; 
  float mass; 
  
  Mover(float m, float x, float y){
    mass = m; 
    position = new PVector(x, y); 
    velocity = new PVector(1, 0); 
    acceleration = new PVector(0, 0); 
    
  }
  
  void applyForce(PVector force){
    PVector f = PVector.div(force, mass); 
    acceleration.add(f); 
  }
  
  void update(){
    velocity.add(acceleration); 
    position.add(velocity); 
    acceleration.mult(0); 
  }

  void display(){
    fill(random(0, 255), random(0, 255), random(0, 255)); 
    ellipse(position.x, position.y, mass*25, mass*25); 
  }
}