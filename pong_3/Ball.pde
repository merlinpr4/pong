class Ball {
  float x; float y;
  float dx; float dy; //speed of x and the speed of y
  int radius;
  color ballColor = color(200, 100, 50);
   Ball(){
      x = random(SCREENX/4, SCREENX/2); //current x position
      y = random(SCREENY/4, SCREENY/2); // current y positiion
      dx = random(1, 2); dy = random(1, 2); //
       radius=5;
          }
    void move()
       {
         x = x+dx; y = y+dy;  // x is current x co-ordinate dx is rate of change of x co-ordinate
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
              println("collided!");
              dy=-dy;
              }
              
              if (y-radius <= tc.ypos +PADDLEHEIGHT &&
                  y-radius>tc.ypos-PADDLEHEIGHT && 
              x >=tc.xpos && x <= 
              tc.xpos+PADDLEWIDTH)
               {
               println("collided!");
                dy=-dy;
                }
                
      /*      if (y +radius >=  SCREENY)
            {
              reset() ;
            }
                
              if (y - radius <=  0)
            {
              reset();
            } 
           */ 
                
                
                
                
    /*      if  (y + radius == SCREENY)
          {
     theBall.x = SCREENX/2 ;
     theBall.y = SCREENY/2 ;
          }
     
          if (y- radius <= 0)
          {
      theBall.x = SCREENX/2 ;
      theBall.y = SCREENY/2 ;
          }
           */         
     }
  }
