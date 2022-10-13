//Room data
int roomCount = 3;
String [] description = new String[roomCount];

//Player's data
int currentRoom = 0;
int choice = 0;

void setup()
{
  size(900,600);
  textAlign(CENTER);
  textSize(40);
  
  description[0] = "Ye find yeself in a dungeon. Ye see a gate and a hole in the wall.";
  description[1] = "You went left";
  description[2] = "You went left";
}

void draw()
{
  background(0);
  
  choice = drawButtons();
  
  //THIS WILL NOT WORK FOR A FULL GAME
  if( choice != -1 )
    currentRoom = choice;
  
  //Draws the text in the middle of the screen
  fill(255);
  text(description[currentRoom],width/2-250,height/2,500,400);
}

//Gives you a 1 if you click the left button
//Gives you a 2 if you click the right button
int drawButtons()
{
  int returnValue = -1;
  stroke(90);
  strokeWeight(4);
  
  fill(160);
  if(mousePressed && mouseX < 100)
  {
    fill(120);
    returnValue = 1;
  }
  rect(0,0,100,height);
  
  fill(160);
  if(mousePressed && mouseX > width-100)
  {
    fill(120);
    returnValue = 2;
  }
  rect(width,0,-100,height);

  return returnValue;
}
