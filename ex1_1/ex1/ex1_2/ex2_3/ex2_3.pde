int i;
int j;


void setup ()
  {
  size(500,500); 
  i=0;
  j=0;
  }
  
  void draw()
  {
    background(255);
        
      noStroke();
  
    fill(255,200,0);
    rect(i++,200,100,100);
    if (i ==500) i=0;
      
    rect (j++,200,100,100); 
 
    if (i ==400) j=-100;

    
    System.out.println(i);
     frameRate(100);
  }
