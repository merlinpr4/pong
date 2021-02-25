Player thePlayer;
Player theComputer;
Ball theBall;
PFont myFont;  



void settings(){
size(SCREENX, SCREENY);
 myFont = loadFont("ArialMT-18.vlw"); }
void setup(){
thePlayer = new Player(SCREENY-MARGIN-PADDLEHEIGHT);
theBall = new Ball();

theComputer = new Player(MARGIN);
ellipseMode(RADIUS);

}

void reset() { 
 setup();
 draw();

}

void mousePressed(){
  loop();
  reset();
}

void draw() {
background(0);
thePlayer.move(mouseX);
theBall.move();
theComputer.tcmove();
theBall.collide(thePlayer,theComputer);
thePlayer.score();
thePlayer.draw();
theBall.draw();
theComputer.draw();

  /* for ( float time = 0 ; time < 999 ; time= time + 1 )
   {
     println (time);
   }
*/

}
