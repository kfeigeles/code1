int numPos = 200; 
int [] xPos1= new int[numPos]; 
int [] yPos= new int [numPos]; 

int num = 200;
int [] xPos = new int[num];
int size = 10;

void setup() {
  fullScreen();
}

void draw() {
  background(255);
  
  for(int i = 0; i < num; i ++){
    xPos[i] = i * size;
  }
  
  for(int i = 0; i < num; i ++){
    stroke(5);
    fill(150);
    ellipse(xPos[i], 100, size*i, size*i);
  
    stroke(5);
    fill(251, 255, 62);
    ellipse(xPos[i], 50, size*1, size*1);
    ellipse(xPos[i], 75, size*6, size*6);
    ellipse(xPos[i], 200, size*2, size*2);
    ellipse(xPos[i], 275, size*5, size*5);
    ellipse(xPos[i], 350, size*3, size*3);
    ellipse(xPos[i], 456, size*1, size*1);
    ellipse(xPos[i], 500, size*4, size*4);
    ellipse(xPos[i], 650, size*5, size*5);
    ellipse(xPos[i], 725, size*1, size*1);
    ellipse(xPos[i], 800, size*6, size*6);
  }
  
    for (int i = 0; i< numPos-1; i++) {
    xPos1[i]= xPos1[i+1]; 
    yPos[i]= yPos[i+1]; 
  }
   //nav for cirlces to follow mouse
   xPos[numPos-1] = mouseX; 
   yPos[numPos-1] = mouseY; 
   
   for( int i= 0; i< numPos; i++) {
     fill(30);  
     ellipse(xPos[i], yPos[i], 20, 20); 
  }
  
//lines moving across the page
  float curveWidth = 20.0;
  float curveThickness = 5.0;
  float angleOffset = 5;
  
  float angleIncrement = map(mouseY, 0, height, 0.0, 0.2);
  float angleA = 0.0;
  float angleB = angleA + angleOffset;
  
  float k = map(mouseX, 0, width, 2.0, 4.0);
  
  for (int i = 0; i < height; i += curveWidth*k) {
    //float waveColor = map(i, 0, mouseY+10, 0, 255);
    noStroke();
//push and pop matix that track the movement of the lines and store the angles and curves
    pushMatrix();
    translate(0, 800);
    //fill(waveColor);
    fill(0);
    beginShape(QUAD_STRIP);
    for (int x = 0; x <= width; x += 15) {
      float y1 = i + (sin(angleB) * curveWidth);
      float y2 = i + (cos(angleA) * curveWidth);
      vertex(x, y1);
      vertex(x, y2 + curveThickness);
      angleA += angleIncrement;
      angleB = angleA + angleOffset;
    }
    endShape();
    
    pushMatrix();
    scale(1.0, -1.0);
    beginShape(QUAD_STRIP);
    for (int x = 0; x <= width; x += 10) {
      float y1 = i + (sin(angleB) * curveWidth);
      float y2 = i + (cos(angleA) * curveWidth);
      vertex(x, y1);
      vertex(x, y2 + curveThickness);
      angleA += angleIncrement;
      angleB = angleA + angleOffset;
    }
    endShape();
    popMatrix();
    popMatrix();
  }
}