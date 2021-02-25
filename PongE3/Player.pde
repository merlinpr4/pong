class Player {
int xpos; int ypos;
int playerScore;
int computerScore;
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

void score() 
{
  int yPosBall = (int)theBall.y ;
  int ballRadius = theBall.radius ;
  
       if  (yPosBall + ballRadius >= SCREENY)  
          {
     println("computer scored");
     computerScore = computerScore +1  ;
     println("computer Score : " + computerScore);
     theBall.x = SCREENX/2 ;  
     theBall.y = SCREENY/2 ;
     
          }
          
     if (yPosBall- ballRadius <= 0)
          {
     println("the player scored");
     playerScore ++ ;
      println("player Score : " + playerScore);
     theBall.x = SCREENX/2 ;
     theBall.y = SCREENY/2 ;
          }
     
      if (computerScore >= 3) //
      {
        textFont(myFont);  
        fill(255);                        
        text("Game Over",100,100); 
       noLoop();
      }
      
       if (playerScore >= 3) 
      {
        textFont(myFont);  
        fill(255);                        
        text("Winner",100,100); 
       noLoop();
      }       
}
void draw()
{
fill(paddlecolor);
rect(xpos, ypos, PADDLEWIDTH, PADDLEHEIGHT);
}
}
