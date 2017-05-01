//Daniel Adams
//April 12, 2017
int r = 250;
int l = 250;
int startX = 450; // Initial x-coordinate
int startY = 300; // Initial y-coordinate
float step = 0.005; // Size of each step (0.0 to 1.0)
float pct = 0.0; // Percentage traveled (0.0 to 1.0)

void setup() {
  size(900, 600);
  background(0);
  smooth();
}

void draw() {
  background(0);
  float stopX = random(width); // Final x-coordinate
  float stopY = random(height); // Final y-coordinate
  float x = startX; // Current x-coordinate
  float y = startY; // Current y-coordinate
  fill(255);
  if (keyPressed) {
  if (key == 'a') { //left up
    l -=10;
    }
    else if (key == 'z') {
    l +=10;
    }
}
  rect(50, l, 25, 150); //Left Paddle (mouse)
  if (keyPressed && (key == CODED)) { // If it’s a coded key
  if (keyCode == UP) { // If it’s the up arrow
    r -=10;
    } else if (keyCode == DOWN) { // If it’s the down arrow
    r +=10;
    }
  }
  rect(850, r, 25, 150); //Right Paddle (arrows)

//ball
if (pct < 1.0) {
x = startX + ((stopX-startX) * pct);
y = startY + ((stopY-startX) * pct);
pct += step;
}
ellipse(x, y, 20, 20);







//end
}