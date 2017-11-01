class Particle{
  float xPos, yPos;
  float xSpeed, y Speed;
  float size;
  
  int c;
  int r, g, b;
  
  Particle(){
    xPos = mouseX;
    yPos = mouseY;
    
    xSpeed = random(-5, 5);
    ySpeed = random(1, 5);
  }
  
  void move(){
  xPos = xPos + xSpeed;
  yPos = yPos + ySpeed;
  }
  
  void gravity(){
    ySpeed += 0.09;
  }
  
  void display(){
    c = (int) (abs(xSpeed) + (abs(ySpeed))* 10 + 30;
    r = c + 40;
    g = c;
    b = 250 - c;
    
    size = 50;
    
    ellipse(xPos, yPos, size, size);
  }
}