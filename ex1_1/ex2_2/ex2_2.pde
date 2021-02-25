int i;

void setup ()
  {
  size(500,500); 
  i=0;
  }
  
  void draw()
  {
    background(0);
        
      noStroke();
  
    fill(160, 210, 230);
    rect(i++,200,100,100);
    if (i ==500) i=0;
    frameRate(500);
  }
