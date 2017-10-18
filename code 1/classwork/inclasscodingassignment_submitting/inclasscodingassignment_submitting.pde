int x;
int y;
int x2, y2;
int size;
float dist;
boolean buttonClicked;
boolean buttonClicked2;
float x1, y1;
float x3, y3;
float x4, y4;

void setup(){
  size(600, 600);
  x = width/4;
  y = height/4;
  x2 = 70;
  y2 = 70;
  size= 70;
}

void draw(){
  if(buttonClicked){
    background(255);
    fill(0, 250, 150);
  }else{
    background(255);
    fill(255, 0, 0);
    ellipse(300, 300, 100, 100);
  }
  if(buttonClicked){
    fill(0, 0, 200);
    noStroke();
    rect(300, 300, 100, 100);
    float x1 = map(mouseX, 0, width, 50, 500);
    ellipse(x1, 75, 50, 50);
    float x3 = map(mouseX, 0, width, 0, 570);
    rect(x3, 120, 50, 50);
    float y4 = map(mouseY, 50, height, 0, 600);
    ellipse(y4, 100, 50, 70);
  }else{
  }
  ellipse(x, y, size, size);
  rect(x1, y1, size, size);
}

void mousePressed(){
  if(calcDistance(x,y) <= 50){
    buttonClicked = !buttonClicked; 
  }
  if(calcDistance(x2, y2) <=size/2){
    buttonClicked2 =!buttonClicked2; 
  }
}
float calcDistance(int xPos, int yPos){
    dist = dist(mouseX, mouseY, xPos, yPos);
    return dist; 
}