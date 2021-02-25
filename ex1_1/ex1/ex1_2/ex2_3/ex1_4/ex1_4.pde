  int i;
  int j;

  int a;
  int b;
  
  void setup ()
    {
    size(500,500); 
    i=0;
    j=0;
    
   a=500;
   b=0;
    }
    
    void draw()
    {
      background(255);
          
        noStroke();
    
      fill(255,200,0);
      
      rect(i++,100,100,100);
      if (i ==500) i=0;
      rect (j++,100,100,100); 
      if (i ==400) j=-100;
   
      fill(0, 210, 200);
      rect(a--,200,100,100);
      if (a ==-100) a=400;   
      
      rect(b--,200,100,100);
      if (a==0) b=500;
     println(a);
     println(b);
  
       frameRate(100);
    }
