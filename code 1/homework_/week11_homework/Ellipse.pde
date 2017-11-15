class Ellipse{
  //data
  //PVector - stores x and y componts in the same "package/variable
    //holding x and y componts together - position, velocity, etc
  PVector position;
  PVector translate;
  int size;
  //constructor
  Ellipse(int _xPos, int _yPos){
    position = new PVector(0, 0);
    translate = new PVector(_xPos, _yPos);
    size = 10;
  }
  
  void display(color c){
    fill(random(0, 255), random(0, 255), random(0, 255));
    ellipse(position.x, position.y, size, size);
  }
  
  void orbit(int orbitDirection){
    position.x = cos(frameCount * .01) * size + translate.x;
    position.y = orbitDirection*sin(frameCount * .01) * size + translate.y;
  }
  //methods
}