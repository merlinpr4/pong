  
  int right ;
  int left ;
  int down ;
  
  void setup ()
  {
  size(500,500); 
  right = 250;
  left =200 ; 
  down =300 ;
  }
  
  void draw()
  {
    background(0);
    
      noStroke();
  
    fill(0, 210, 0);
    rect(right++,250,100,100);
    
    fill(255,200,0);
    rect(left--,200,100,100);
    
    fill (0,204,255);
    rect (300,down++,100,100);
   
  }
