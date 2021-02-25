  class Player {
  int xpos; int ypos; 
  color paddlecolor = color(100);
  Player(int screen_y) //int screen_y is the position on the screen
  {
  xpos=SCREENX/2;
  ypos=screen_y;
  }
  void move(int x){ //int x is mouse X
  if(x>SCREENX-PADDLEWIDTH) xpos = SCREENX-PADDLEWIDTH; //this makes sure paddle stays on screen and doesnt go off the screen
  else xpos=x;
  }
  

void tcmove() {
   float xPosBall =theBall.x ; 
   if(xPosBall>SCREENX-PADDLEWIDTH) xpos = SCREENX-PADDLEWIDTH; 
   else if (xpos> xPosBall ) 
   xpos =xpos -1 ;
   else if  (xpos < xPosBall)
   xpos =  xpos +1;       //ask if this is correct way to do it
                         // else xpos=int(xPosBall);//right now its following the ball perfectly
  }
  
  
  void draw()
  {
  fill(paddlecolor);
  rect(xpos, ypos, PADDLEWIDTH, PADDLEHEIGHT);
  }
  }
