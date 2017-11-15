//need to define size of our array
//need 2 dimensions for our array
//color arrays
//boolean array to keep track of when ellipse was clicked
//num has to be defined before array - reads from top to bottom
//because it is a 2D array you need [][] (everything needs two dimensions) 
//int num = ? defines how many slots are in the array
//inside for loops is where you set up default values for the array(s)
//size = size of ellipse
int num = 61;
boolean [][] clicked = new boolean[num][num];
color [][] c = new color [num][num];
int size = 10;

void setup(){
  size(600, 600);
  background(0);
  smooth();
  
  for(int i = 0; i < num; i ++){
    for(int j = 0; j < num; j ++){
      clicked[i][j] = false;
      c[i][j] = color(255);
    }
  }
}

void draw(){
  //use variables that were set up
  for(int i = 0; i < num; i ++){
    for(int j = 0; j < num; j ++){
      
    if(clicked[i][j] == false){
      if (mousePressed){
        if(dist(mouseX, mouseY, i*size, j*size)<= size/2){
        c[i][j] = color(random(0, 255), random(0, 255), random(0, 255));
        clicked[i][j] = true;
        }
      }
      
      fill(c[i][j]);
      ellipse(i*size, j*size, size, size);
      }
    }
  }
}