int r;

void setup(){
  size(600, 600);
}

void draw(){
  background(0);
  
  //single loop
  //for(int i = 0; i<= 600; i+= 100){
  //  r = int(map(i, 0, 600,0, 255));
  //  fill(r,0 ,0);
  //  ellipse(i, 100, 100, 100);
    
  //  ellipse(i * mouseX/100, i * mouseY/100, 50, 50);
  //}
  
  
  //nested loops
  for (int i = 0; i <= 600; i += 100){
    for (int j = 0; j <= 600; j += 100){
      r = int(map(i, 0, 600,0, 255));
      int b = int(map(j, 0, 600,0, 255));
      fill(r, 0, b);
      
      ellipse(i, j, 100, 100);
    }
  }
}