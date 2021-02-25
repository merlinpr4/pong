class Ball {
  float x; float y;
  float dx; float dy; //direction x and the direction of y
  int radius;
  int playerScore =0;
  int computerScore = 0;
  color ballColor = color(200, 100, 50);
   Ball(){
      x = random(SCREENX/4, SCREENX/2); //current x position
      y = random(SCREENY/4, SCREENY/2); // current y positiion
      dx = random(1, 2); dy = random(1, 2); //speed to the ball
       radius=5;
          }
    void move()
       {
         x = x+dx;
         y = y+dy;  // x is current x co-ordinate 
                  //dx is rate of change of x co-ordinate speed
        }
        void draw(){
        fill(ballColor);
        ellipse(int(x), int(y), radius, radius);
         }
         
        void collide(Player tp, Player tc)
        {
              if(x-radius <=0) dx=-dx; //bounce off left wall
              else if(x+radius>=SCREENX) dx=-dx; //bounce off right wall
     
              
                  if(y+radius >= tp.ypos && // if the ball hits halfway into the top the paddle
              y-radius<tp.ypos+PADDLEHEIGHT && // and the ball is in the area of the paddle
              x >=tp.xpos && x <=  //hit the ball
              tp.xpos+PADDLEWIDTH)
              {
              println("collided player!");
              dy=-dy;
            //  dx = x-tp.xpos/3 ;
              
              
           //  dx = (mouseX-pmouseX) /30 ;
             dx = -dx ;
             // dx = tp.xpos-
            dx = map(x - tp.xpos,-(float)PADDLEWIDTH/2,(float)PADDLEWIDTH/2,-4,4) ; //we need to change x position depending on paddle x position
             //is this too random is there a better way ? how do you calculate the speed of the paddle
         // variable2 = map(variable1, min1, max1, min2, max2)
           //   dx =-dx  ; 
        //  dx = x -tp.xpos ; //ask if there is a better way to it
          //    dx = x - tp.xpos ; //should be halfway between ball x position and the paddles
          
              }
              
              if (y-radius <= tc.ypos +PADDLEHEIGHT &&
                  y-radius>tc.ypos-PADDLEHEIGHT && 
              x >=tc.xpos && x <= 
              tc.xpos+PADDLEWIDTH)
               {
               println("collided computer!");
                dy=-dy;
                
              //  dx = x- tc.xpos/5 ;
                
              dx = map(x - tc.xpos,-(float)PADDLEWIDTH/2,(float)PADDLEWIDTH/2,-4,4) ;
            
                dx = -dx ;
                //dx = x - tc.xpos ;
             
               }
     }
  }
