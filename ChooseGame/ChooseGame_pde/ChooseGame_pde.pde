//My version
//Room data
String [] description =
  {
    "Welcom to Jumanji, i'm glad that you arrived DR. Brave Stone. Jumanji is in grave danger. chose go left or go right for more information",
    "i ain't dying today hippo, you got to have eyes in the back of your head, gets eaten by a snake you died",
    //1
    "you got to get the orange stone and show it the sun choese left or right. Your totally not going to die",
    //2
    "your in a town and you have to fight your weekness chose left or right.",
    //3
    "your on the monky bridge and your runnig choes left or right."
    //4
    ""
    //5
    ""
    //6
    ""
    //7
    ""
    //8
    ""
    //9
    ""
    //10
  };

//Player's data
int currentRoom = 0;
int choice = 0;

void setup()
{
  size(900,600);
  textAlign(CENTER);
  textSize(40);
}

int changeRoom()
{
  if( choice == 1 ) //left
    switch( currentRoom )
    {
      case 0:
        return 1;
      default:
        return 0;
      case 2:
        return 4;
    }
  else //right
    switch( currentRoom )
    {
      case 0:
        return 2;
      case 1:
        return 3;
      case 2:
        return 3;
      default:
        return 0;
    }
}

//********************************************//

void draw()
{
  background(0);
  
  drawButtons();
  
  //Draws the text in the middle of the screen
  fill(255);
  text(description[currentRoom],width/2-250,50,500,400);
}

void drawButtons()
{
  stroke(100);
  strokeWeight(4);
  
  //First Button
  fill(160);
  if(mousePressed && mouseX < 100)
  {
    fill(120);
  }
  rect(0,0,100,height);
  
  //Second Button
  fill(160);
  if(mousePressed && mouseX > width-100)
  {
    fill(120);
  }
  rect(width,0,-100,height);
}

void mouseReleased()
{
  choice = -1;
  if( mouseX > width-100 ) //<>//
    choice = 2;
  if( mouseX < 100 )
    choice = 1;
   if( mouseX > width-100 || mouseX < 100)
  currentRoom = changeRoom();
  choice = -1;
}
