Plant kitty;
Plant margaret;
Plant bob;
int xPos;
int yPos;

void setup(){
  size(770, 500);
  background(255);
  xPos = int(random(100, 200));
  kitty = new Plant(xPos);
  margaret = new Plant(xPos + 100);
  bob = new Plant(xPos + 200);
}

void draw(){
  color kittyColor = color(5, 255, 170);
  color mColor = color(15, 255, 220);
  color bColor = color(5, 200, 100);
  kitty.display(kittyColor, 10, 250);
  margaret.display(mColor, 20, 120);
  bob.display(bColor, 15, 145);
  
 noStroke();
}