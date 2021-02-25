Player thePlayer;
Player theComputer;
Ball theBall;
void settings(){
size(SCREENX, SCREENY);
}
void setup(){
thePlayer = new Player(SCREENY-MARGIN-PADDLEHEIGHT);
theBall = new Ball();

theComputer = new Player(MARGIN);
ellipseMode(RADIUS);
}

void reset() {
 setup();  //does setup automattically call draw? 
// draw();
}

/*void reset(){

 theBall.x = SCREENX/2 ;  
 theBall.y = SCREENY/2 ;
} */

void mousePressed(){
  reset();
}

void draw() {
background(0);
thePlayer.move(mouseX);
theBall.move();
theComputer.tcmove();
theBall.collide(thePlayer,theComputer);
thePlayer.draw();
theBall.draw();
theComputer.draw();
}
