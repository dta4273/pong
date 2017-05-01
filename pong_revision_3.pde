//Daniel Adams
//May 1, 2017
int paddlex = 250-37;
int paddley = 480;
int ballX = int(random(0, width));
int ballY = int(random(0, height));
int changeX = -5;
int changeY = -5;
int speed = 5;
int score = 000;
int attempt = 3;
int s = 50;
int gameOver = 0;
int rcol1 = 255;
int rcol2 = 255;
int rcol3 = 255;

void setup() {
size(500, 500);
}
void draw() {
  background(0);
//Score
  text("SCORE:"+score,width-100, 20);
  text("ATTEMPTS:"+attempt, width-100, 40);
  text("Daniel Adams", width-100, 80);

//Paddle
if (keyPressed && (key == CODED)) { // If it’s a coded key
if (keyCode == LEFT) { // If it’s the left arrow
paddlex-=10;
} else if (keyCode == RIGHT) { // If it’s the right arrow
paddlex+=10;
}
}
fill(255);
rect(paddlex, paddley, 75, 20);

//Ball
fill(rcol1, rcol2, rcol3);
ellipseMode(CENTER);
ellipse(ballX, ballY, 20, 20);
  ballX=ballX+changeX;
  ballY=ballY+changeY;
  if(ballX<0 | ballX>width)
  {
    changeX=-changeX;
      speed = int(random(1, 100));
  }
  if(ballY<0)
  {
    changeY=-changeY;
      speed = int(random(1, 100));
  }

//Collision
  if(ballY>=paddley-20 && (ballX>=paddlex && ballX<=paddlex+75))
  {
    changeX=-changeX;
    changeY=-changeY;
    score = score+1;
    rcol1 = int(random(255));
    rcol2 = int(random(255));
    rcol3 = int(random(255));
  }

//End game
  if(ballY>height+20)
  {
    delay(1000);
    ballX = width/3;
    ballY = height/3;
    attempt = attempt-1;
  }
fill (255);
//Timer
s = 30-second();
text("TIME:"+s,width-100, 60);
if (s<2) {
  gameOver=1;
}

//End
  if(attempt<1)
  {
    gameOver=1;
  }
  if(gameOver>=1) {
background(0);
text("Game Over", width/2, height/2);
  text("SCORE:"+score,width-100, 20);
  text("ATTEMPTS:"+attempt, width-100, 40);
  text("Daniel Adams", width-100, 80);
  text("TIME:"+0,width-100, 60);
  ballX = 0;
  ballY = 0;
  }
}