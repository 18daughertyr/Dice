Die bob;
int total;
void setup()
{
  size(500,500);
  noLoop();
}
void draw()
{
   background(0);
  for (int j = 0; j<= 400; j+=100){
    for(int i= 100; i<=400; i+=100){
    bob = new Die(j,i);
    bob.roll();
    bob.show();
    }
  fill(255);
     textSize(32);
}
text("Total: " + total, 100,50);
total= 0;
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, num;
  Die(int x, int y) //constructor
  {
   myX = x;
   myY= y;

  }
  void roll()
  {
    num = (int)((Math.random()*6)+1);
    total += num;
      
  }
  void show()
  {
    fill(250);
    rect(myX,myY,100,100);
    fill(0);
    if (num == 1){
      ellipse((myX+50),(myY+50),10,10);
    }
     fill(0);
    if (num == 2){
      ellipse((myX+25),(myY+25),10,10);
      ellipse((myX+75),(myY+75),10,10);
    }
     fill(0);
    if (num == 3){
      ellipse((myX+25),(myY+25),10,10);
      ellipse((myX+50),(myY+50),10,10);
      ellipse((myX+75),(myY+75),10,10);
    }
     fill(0);
    if (num == 4){
      ellipse((myX+25),(myY+25),10,10);
      ellipse((myX+25),(myY+75),10,10);
      ellipse((myX+75),(myY+25),10,10);
      ellipse((myX+75),(myY+75),10,10);
    }
     fill(0);
    if (num == 5){
      ellipse((myX+25),(myY+25),10,10);
      ellipse((myX+25),(myY+75),10,10);
      ellipse((myX+75),(myY+25),10,10);
      ellipse((myX+75),(myY+75),10,10);
      ellipse((myX+50),(myY+50),10,10);
    }
     fill(0);
    if (num == 6){
      ellipse((myX+25),(myY+25),10,10);
      ellipse((myX+25),(myY+50),10,10);
      ellipse((myX+25),(myY+75),10,10);
      ellipse((myX+75),(myY+25),10,10);
      ellipse((myX+75),(myY+50),10,10);
      ellipse((myX+75),(myY+75),10,10);
  }   
  }
}
