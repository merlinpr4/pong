    int i;
    int j;
  
    int a;
    int b;
    
    float phase;
    
    
    int red;
    int green;
    int blue;
    
    void setup ()
      {
      size(500,800); 
      i=0;
      j=0;
     a=500;
     b=0;
     
     red=0;
     green=0;
     blue=0;
     
     phase=0;
     
     
      }
      
      void draw()
      {
        background(0);
            
          noStroke();
      
        fill(red,green,blue);
       red= red+1;
       green= green+2;
        blue= blue+3;
        if (red==255)red=0;
        if (green==255)green=0;
        if (blue==255)blue=0;
        
        phase= phase +.06;
        
 
        
        rect(i++,100*sin(phase)+200,100,100);
        if (i ==500) i=0;
        rect (j++,100*sin(phase)+200,100,100); 
        if (i ==400) j=-100;
        
         
      rect(a--,100*sin(phase)+400,100,100);
      if (a ==-100) a=400;   
      
      rect(b--,100*sin(phase)+400,100,100);
      if (a==0) b=500;
        
        
       println(a);
       println(b);
    
         frameRate(100);
      }
