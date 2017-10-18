PVector buttonSize = new PVector (150, 30);
 
int levelNumber;
 
String textForMyLevel [];
String buttonOneText [];
String buttonTwoText [];
 
void setup ()
{
  size (1024, 768);
  background(159, 219, 250);
  levelNumber = 0;
  textForMyLevel = new String [9];
  textSize(20);
  textForMyLevel[0] = "you walk into the woods and see two pathways which way do you go";
  textForMyLevel[1] = "you see a river and go towards it, jump in";
  textForMyLevel[2] = "you get out of the water and follow a path that looks deserted but you keep walking you see a house in the distance";
  textForMyLevel[3] = "you get in the water and feel something weird on your feet";
  textForMyLevel[4] = "you feel something pulling you down. YOU ARE DEAD"; 
  textForMyLevel[5] = "you look into a window and the house looks empty. window or door?";
  textForMyLevel[6] = "you push the door open and fall 3 floors into a trap YOU ARE DEAD";
  textForMyLevel[7] = "you shove the window open";
 
  buttonOneText = new String [9];
  buttonOneText[0] = "left";
  buttonOneText[1] = "swim";
  buttonOneText[2] = "window";
  buttonOneText[3] = "continue";
  buttonOneText[4] = "restart";
  buttonOneText[5] = "open window";
  buttonOneText[6] = "restart";
  buttonOneText[7] = "run";
 
 
  buttonTwoText = new String [9];
  buttonTwoText[0] = "right";
  buttonTwoText[1] = "swim";
  buttonTwoText[2] = "door";
  buttonTwoText[3] = "continue";
  buttonTwoText[4] = "restart";
  buttonTwoText[5] = "try door";
  buttonTwoText[6] = "restart";
  buttonTwoText[7] = "ide";
}
 
void draw ()
{
  background (0);
  if (levelNumber == 0)
  {
    LevelZero();
  } 
  else if (levelNumber == 1)
  {
    LevelOne();
  } 
  else if (levelNumber == 2) 
  {
    LevelTwo();
  } 
  else if (levelNumber == 3) 
  {
    LevelThree();
  }
  else if (levelNumber == 4) 
  {
    LevelFour();
  }
  else if (levelNumber == 5) 
  {
    LevelFive();
  }
  else if (levelNumber == 6) 
  {
    LevelSix();
  }
  else if (levelNumber == 7) 
  {
    LevelSeven();
  }
}
 
void PrintMyLevelText ()
{
  text(textForMyLevel[0], 100, 100);
}
void PrintMyLevelText1 ()
{
  text(textForMyLevel[1], 100, 100);
}
void PrintMyLevelText2 ()
{
  text(textForMyLevel[2], 100, 100);
}
void PrintMyLevelText3 ()
{
  text(textForMyLevel[3], 100, 100);
}
void PrintMyLevelText4 ()
{
  text(textForMyLevel[4], 100, 100);
}
void PrintMyLevelText5 ()
{
  text(textForMyLevel[5], 100, 100);
}
void PrintMyLevelText6 ()
{
  text(textForMyLevel[6], 100, 100);
}
void PrintMyLevelText7 ()
{
  text(textForMyLevel[7], 100, 100);
}
 
void PrintMyButtonTexts ()
{
  text(buttonOneText[0], width/2 - buttonSize.x - 100, height - 150 + buttonSize.y);
  text(buttonTwoText[0], width/2 + 100, height - 150 + buttonSize.y);
}
void PrintMyButtonTexts1 ()
{
  text(buttonOneText[1], width/2 - buttonSize.x - 100, height - 150 + buttonSize.y);
  text(buttonTwoText[1], width/2 + 100, height - 150 + buttonSize.y);
}
void PrintMyButtonTexts2 ()
{
  text(buttonOneText[2], width/2 - buttonSize.x - 100, height - 150 + buttonSize.y);
  text(buttonTwoText[2], width/2 + 100, height - 150 + buttonSize.y);
}
void PrintMyButtonTexts3 ()
{
  text(buttonOneText[3], width/2 - buttonSize.x - 100, height - 150 + buttonSize.y);
  text(buttonTwoText[3], width/2 + 100, height - 150 + buttonSize.y);
}
void PrintMyButtonTexts4 ()
{
  text(buttonOneText[4], width/2 - buttonSize.x - 100, height - 150 + buttonSize.y);
  text(buttonTwoText[4], width/2 + 100, height - 150 + buttonSize.y);
}
void PrintMyButtonTexts5 ()
{
  text(buttonOneText[5], width/2 - buttonSize.x - 100, height - 150 + buttonSize.y);
  text(buttonTwoText[5], width/2 + 100, height - 150 + buttonSize.y);
}
void PrintMyButtonTexts6 ()
{
  text(buttonOneText[6], width/2 - buttonSize.x - 100, height - 150 + buttonSize.y);
  text(buttonTwoText[6], width/2 + 100, height - 150 + buttonSize.y);
}
void PrintMyButtonTexts7 ()
{
  text(buttonOneText[7], width/2 - buttonSize.x - 100, height - 150 + buttonSize.y);
  text(buttonTwoText[7], width/2 + 100, height - 150 + buttonSize.y);
}
 
 
int buttonSelection ()
{
  int thingToReturn = 0;
 
  rect(width/2 - buttonSize.x - 100, height - 100, buttonSize.x, buttonSize.y);
  rect(width/2 + 100, height - 100, buttonSize.x, buttonSize.y); 
 
  if (mouseX >= (width/2 - buttonSize.x - 100) && mouseX <= (width/2 - 100) && mouseY >= (height - 100) && mouseY <= (height - 100 + buttonSize.y))
  {
    if (mousePressed)
    {
      thingToReturn = 1;
    }
  } else if (mouseX >= (width/2 + 100) && mouseX <= (width/2 + 100 + buttonSize.x) && mouseY >= (height - 100) && mouseY <= (height - 100 + buttonSize.y))
  {
    if (mousePressed)
    {
      thingToReturn = 2;
    }
  }
 
  return thingToReturn;
}
 
void LevelZero ()
{
  int playerChoice = buttonSelection ();
  PrintMyButtonTexts();
  PrintMyLevelText();
  println(playerChoice);
  if (playerChoice == 1)
  {
    levelNumber = 1;
  } 
  else if (playerChoice == 2)
  {
    levelNumber = 2;
  }
}
 
void LevelOne ()
{
  int playerChoice = buttonSelection ();
  PrintMyButtonTexts1();
  PrintMyLevelText1();
  println(playerChoice);
  if (playerChoice == 1)
  {
    levelNumber = 3;
    println("Hello from the other side");
  } 
  else if (playerChoice == 2)
  {
    levelNumber = 0;
  }
}
 
void LevelTwo ()
{
  int playerChoice = buttonSelection ();
  PrintMyButtonTexts2();
  PrintMyLevelText2();
  println(playerChoice);
  if (playerChoice == 1)
  {
    levelNumber = 5;
  } 
  else if (playerChoice == 2)
  {
    levelNumber = 6;
  }
}
 
void LevelThree()
{
  int playerChoice = buttonSelection ();
  PrintMyButtonTexts3();
  PrintMyLevelText3();
  println(playerChoice);
  if (playerChoice == 1)
  {
    levelNumber = 4;
  } 
  else if (playerChoice == 2)
  {
    levelNumber = 0;
  }
}
void LevelFour()
{
  int playerChoice = buttonSelection ();
  PrintMyButtonTexts4();
  PrintMyLevelText4();
  println(playerChoice);
  if (playerChoice == 1)
  {
    levelNumber = 0;
  } 
  else if (playerChoice == 2)
  {
    levelNumber = 0;
  }
}
void LevelFive()
{
  int playerChoice = buttonSelection ();
  PrintMyButtonTexts5();
  PrintMyLevelText5();
  println(playerChoice);
  if (playerChoice == 1)
  {
    levelNumber = 7;
  } 
  else if (playerChoice == 2)
  {
    levelNumber = 6;
  }
}
void LevelSix()
{
  int playerChoice = buttonSelection ();
  PrintMyButtonTexts6();
  PrintMyLevelText6();
  println(playerChoice);
  if (playerChoice == 1)
  {
    levelNumber = 0;
  } 
  else if (playerChoice == 2)
  {
    levelNumber = 0;
  }
}
void LevelSeven()
{
  int playerChoice = buttonSelection ();
  PrintMyButtonTexts7();
  PrintMyLevelText7();
  println(playerChoice);
  if (playerChoice == 1)
  {
    levelNumber = 0;
  } 
  else if (playerChoice == 2)
  {
    levelNumber = 0;
  }
}