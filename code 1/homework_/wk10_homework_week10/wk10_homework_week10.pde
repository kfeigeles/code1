int num = 30; 
ArrayList<Mover> movers; 
Attractor a; 

void setup(){
   size(500, 500);
   background(255);
    
   movers = new ArrayList<Mover>(); 
   a = new Attractor(); 
   noStroke(); 
   smooth(); 
}

void draw(){
  background(255);
  
  fill(168, 17, 245); 
  ellipse(0, 0, width, height); 
  
  fill(8, 199, 255);
  rect(300, 450, 305, 100);
  
  fill(8, 199, 255);
  rect(50, 400, 344, 100);
  
  
  a.display(); 
  a.drag();
  a.hover(mouseX, mouseY);

  for(int i = 0; i< movers.size(); i++){
    Mover m = movers.get(i); 
    PVector force = a.attract(m);
    m.applyForce(force); 
    m.update(); 
    m.display(); 
    
    if(m.position.y < 0 || m.position.y > height || m.position.x < 0 || m.position.x > width){
      movers.remove(i); 
    }
  }
  
}

void mousePressed() {
  a.clicked(mouseX, mouseY);
  movers.add(new Mover(random(.1, .5), mouseX, mouseY)); 
}

void mouseReleased() {
  a.stopDragging();
}