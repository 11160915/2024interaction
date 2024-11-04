//week09_7_keyboard_ninja03_KeyPressed_appleKey
PImage board;
void setup(){
  size(600,400);
  board = loadImage("board.png");
  randomApple();
}
float appleX=100,appleY=500,appleVX=5,appleVY=-30;
char appleKey;
void randomApple(){
  appleX=random(100,500);
  appleY=500;
  appleVX=random(8,-8);
  appleVY=random(-30,-20);
  appleKey=(char)('a'+int(random(26)));
}
int score=0;
void draw(){
  background(board);
  text("Score:"+score,400,50);
  fill(255,0,0);
  ellipse(appleX,appleY,80,80);
  fill(255,255,0);
  textSize(50);
  textAlign(CENTER,CENTER);
  text(appleKey,appleX,appleY);
  appleX+=appleVX;
  appleY+=appleVY;
  appleVY+=0.98;
  if(appleX>600 || appleX<0 || appleY>550){
    randomApple();
  }
}
