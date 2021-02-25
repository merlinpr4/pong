class Player {
float xpos; int ypos;
float tcVelocity = 1;
int playerScore;
int computerScore;
int time ;
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
   
        float tcSpeedModifier = 0 ;
         float time = 0 ;
         time = time + .001 ; //why isnt time increasing? 
         tcSpeedModifier =  1 + time ; 
       tcVelocity = tcVelocity * tcSpeedModifier  ;   
        println("tcVelocity :" + tcVelocity);
        
   if(xPosBall>SCREENX-PADDLEWIDTH) 
   {
     xpos = SCREENX-PADDLEWIDTH;
   }
   if (xpos <0)
   {
     xpos = PADDLEWIDTH ;
   }
   //if xpos>SCREENX-PADDLEWIDTH
    else if (xpos> xPosBall )
    {
//  xpos =xpos -1 ;
   xpos = xpos - tcVelocity ; //make paddle not go offscreen
   
    }
   else if  (xpos < xPosBall)
   {
 // xpos =  xpos +1 ;
 xpos = xpos - tcVelocity ;
   }         
  // else xpos=int(xPosBall) ; //make it closer and closer to ball position as time goes on  
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
