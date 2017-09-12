int w;
int h;
float myFloat;
String myString;
void setup(){
   myString = "Hello Console";
  //the program won't read this line - can be used to take notes or write comments
  //println(myString);
  //slowing down frame rate slows down everything - auto set to around 30
  
   size(500, 500);
   background(100, 200, 0);
   noStroke();
   //frameRate(5);
   textSize(24);
}

void draw(){
  //automatically loops code indef
  //println("Hello Console");
  //println("Hi Back");
  //random fill 0-255 means the program chooses the fill color
  
  rectMode(CENTER);
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(width*.25, height*.25, 100, 100);
  
  fill(0, 200, 200);
  ellipse(width*.25, height*.25, 50, 50);
  
  text(myString, width/2, height/2);
}