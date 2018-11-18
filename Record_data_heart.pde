int num = 20;
int[] x = new int[num];
int[] y = new int[num];

PImage heart;

void setup() { 
  size(600, 600);
  fill(#D35151);
  heart = loadImage("heart.png");
}

void draw() {
  background(0);
  // Shift the values to the right
  for (int i = num-1; i > 0; i--) {
    x[i] = x[i-1];
    y[i] = y[i-1];
  }
  // Add the new values to the beginning of the array
  x[0] = mouseX;
  y[0] = mouseY;
  // Draw the circles
  for (int i = 0; i < num; i++) {
    image(heart, x[i], y[i], i/0.5, i/0.5);
  }
}
