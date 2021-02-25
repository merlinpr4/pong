int i;
int j;
int m;

void setup ()
  {
  size(500,500); 
  i=0;
  j=0;
  m=0;
  }
  
  void draw()
  {
    background(0);
        
      noStroke();
  
    fill(160, 210, 230);
    rect(i++,200,100,100);
    if (i ==500) i=0;
      
    rect (j++,200,m,100); //second square is not being drawn
 
    if (i>=400) m++; //i dont think this is drawing it enough
    if (m==100) m=0;
    if (j ==500) j=0;
    
     frameRate(100);
  }
