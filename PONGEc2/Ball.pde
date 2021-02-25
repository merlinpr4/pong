class Ball {
  float x; float y;
 // float intialspeedx = 5;
 // float intialspeedy = 5;
  float dx; float dy; //speed of x and the speed of y
  int radius;
  int playerScore =0;
  int computerScore = 0;
  int ballSpeedModifier =0;
  color ballColor = color(200, 100, 50);
  
  
   Ball(){
      x = random(SCREENX/4, SCREENX/2); //current x position
      y = random(SCREENY/4, SCREENY/2); // current y positiion
    //  dx = intialspeedx ;
    //  dy = intialspeedy  ;
      dx = random(1, 2); dy = random(1, 2); //
       radius=10;
          }
    void move()
       {
       // int second = 0;
        float ballSpeedModifier = 0 ;
         // second =  second + second () ; 
         //   ballSpeedModifier = 1 + second /40 ;
         float time = 0 ;
         time = time + .001 ;
         ballSpeedModifier =  1 + time ; 
 
         
          //println(ballSpeedModifier);
        
         dx = dx * ballSpeedModifier  ; //ask if this is right
        dy = dy * ballSpeedModifier  ; //is this right?
          x = x+dx   ;
          y = y+dy ;
      //    ballSpeedModifier = second /10;
        }
        void draw(){
        fill(ballColor);
        ellipse(int(x), int(y), radius, radius);
         }
         
        void collide(Player tp, Player tc)    
        {
              if(x-radius <=0) dx=-dx;
              else if(x+radius>=SCREENX) dx=-dx;
              if(y+radius >= tp.ypos &&
              y-radius<tp.ypos+PADDLEHEIGHT &&
              x >=tp.xpos && x <= 
              tp.xpos+PADDLEWIDTH)
              {
              println("collided player!");
             //  dy = dy + ballSpeedModifier  ; //
              dy=-dy;
           //     dx = map(x - tp.xpos,-(float)PADDLEWIDTH/2,(float)PADDLEWIDTH/2,-4,4) ;
            
           }
              if (y-radius <= tc.ypos +PADDLEHEIGHT &&
                  y-radius>tc.ypos-PADDLEHEIGHT && 
              x >=tc.xpos && x <= 
              tc.xpos+PADDLEWIDTH)
               {
               println("collided computer!");
            //   dy = dy + ballSpeedModifier  ;
                dy=-dy;
         //        dx = map(x - tc.xpos,-(float)PADDLEWIDTH/2,(float)PADDLEWIDTH/2,-4,4) ;
               }
         textFont(myFont);  
        fill(255);                        
        text("Speed of the ball is "+ dx +"    "+dy ,0,300); 
          //     println("x speed is " + dx + "y speed is " +dy );
               

     }
  }
