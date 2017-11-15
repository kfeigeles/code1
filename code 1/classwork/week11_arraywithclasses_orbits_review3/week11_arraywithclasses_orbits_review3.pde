Ellipse myEllipse;
int num = 100;
Ellipse [][] ellipses = new Ellipse[num][num];
int size = 30;

void setup(){
  size(600, 600);
  noStroke();
  myEllipse = new Ellipse(width, height);
  
  for(int i = 0; i < num; i ++){
    for(int j = 0; j < num; j ++){
      ellipses[i][j] = new Ellipse(i * size, j * size);
    }
  }
}

void draw(){
  background(0);
  
  fill(255);
  noStroke();
  rect(300, 300, 20, 20);
  rect(200, 300, 20, 20);
  rect(100, 300, 20, 20);
  rect(400, 300, 20, 20);
  rect(500, 300, 20, 20);
  
  myEllipse.display(color(0, 0, 255));
  myEllipse.orbit(1);
  
  for(int i = 0; i < num; i ++){
    for(int j = 0; j < num; j ++){
      ellipses[i][j].display(color(255));
      if((i + j)% 2 == 0){
      ellipses[i][j].orbit(1);
      }else{
        ellipses[i][j].orbit(-1);
      }
    }
  }
}