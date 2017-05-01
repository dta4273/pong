//Daniel Adams
//April 12, 2017
float ballX = 20;
float ballY = 20;
float dX = random(1, 2);
float dY = random(1, 2);
float c1 = random(0, 255);
float c2 = random(0, 255);
float c3 = random(0, 255);
float paddleX;
float paddleY;
float paddleH;

void setup() {
  size(400, 400);
}

void draw() {
  background(0);
  paddleX = width-15;
  paddleY = mouseY;
  paddleH = 50;
  fill(c1, c2, c3);
  ellipse(ballX, ballY, 20, 20);
  
  fill(255);
  rect(paddleX, paddleY, 10, paddleH);
  
  if (collision()) {
    dX = -dX;
    c1 = random(0, 255);
    c2 = random(0, 255);
    c3 = random(0, 255);
  }
  if (ballY > height) {
    dY = -dY;
    c1 = random(0, 255);
    c2 = random(0, 255);
    c3 = random(0, 255);
  }
  if (ballX < 0) {
    dX = -dX;
    c1 = random(0, 255);
    c2 = random(0, 255);
    c3 = random(0, 255);
  }
  if (ballY < 0) {
    dY = -dY;
    c1 = random(0, 255);
    c2 = random(0, 255);
    c3 = random(0, 255);
  }
  ballX += dX;
  ballY += dY;
} 
  boolean collision() {
    boolean returnValue = false;
    if (ballX > paddleX) {
      if ((ballY >= paddleY) && (ballY <= paddleY + paddleH)) {
        returnValue = true;
      }
    
    return returnValue;
    }