int rollCurrent = 0;
int rollTotal = 0;
void setup()
{
  rectMode(CENTER);
  size(300,300);
  noLoop();
}
void draw()
{
  background(255);
  for(int y = 25; y <= 225 ; y += 35)
  {
    for(int x = 25 ; x <= 300; x += 35)
    {
      Die bob = new Die(x,y);
      bob.show();
      bob.roll();
    }
  }
  textSize(15);
  text("Current Roll: " + rollCurrent, 10,260);
  text("Total Roll: " + rollTotal, 155,260);
  
  
}
void mousePressed()
{
  rollCurrent = 0;
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, numRoll;
  Die(int x, int y) //constructor
  {
    myX = x;  
    myY = y;
    numRoll = (int)(Math.random()*6) + 1;
  }
  void roll()
  {
    fill(0);
    if(numRoll == 1)
    {
      rollCurrent = rollCurrent + 1;
      rollTotal = rollTotal +1;
      ellipse(myX,myY,5,5);
    }
    if(numRoll == 2)
    {
      rollCurrent = rollCurrent + 2;
      rollTotal = rollTotal +2;
      ellipse(myX-7,myY-7,5,5);
      ellipse(myX+7,myY+7,5,5);
    }
    if(numRoll == 3)
    {
      rollCurrent = rollCurrent + 3;
      rollTotal = rollTotal +3;
      ellipse(myX-7,myY-7,5,5);
      ellipse(myX+7,myY+7,5,5);
      ellipse(myX,myY,5,5);
    }
    if(numRoll == 4)
    {
      rollCurrent = rollCurrent + 4;
      rollTotal = rollTotal +4;
      ellipse(myX-7,myY-7,5,5);
      ellipse(myX+7,myY+7,5,5);
      ellipse(myX-7,myY+7,5,5);
      ellipse(myX+7,myY-7,5,5);
    }
    if(numRoll == 5)
    {
      rollCurrent = rollCurrent + 5;
      rollTotal = rollTotal +5;
      ellipse(myX-7,myY-7,5,5);
      ellipse(myX+7,myY+7,5,5);
      ellipse(myX-7,myY+7,5,5);
      ellipse(myX+7,myY-7,5,5);
      ellipse(myX,myY,5,5);
    }
    if(numRoll == 6)
    {
      rollCurrent = rollCurrent + 6;
      rollTotal = rollTotal +6;
      ellipse(myX-7,myY-7,5,5);
      ellipse(myX+7,myY+7,5,5);
      ellipse(myX-7,myY+7,5,5);
      ellipse(myX+7,myY-7,5,5);
      ellipse(myX-7,myY,5,5);
      ellipse(myX+7,myY,5,5);
    }
  }
  void show()
  {
    fill((int)(Math.random()*120)+80,(int)(Math.random()*120)+80,(int)(Math.random()*120)+80);
    rect(myX,myY,30,30);
  }
}
//.