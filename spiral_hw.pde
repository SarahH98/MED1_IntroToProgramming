// Information from book "Learning Processing"
// Variables

float r = 0;          // radius at the beginning should always be 0
float theta = 0;
float start;
float size;
float oldLow=0;
float oldHigh=255;
float newLow=10;
float newHigh=20;

void setup() {
  size(600,600);
  background(255);
}

void draw() {
// polar to cartesian conversion
  float x = r * cos(theta);      // create circular movement
  float y = r * sin(theta);      // create circular movement
  
  float value = random(0,255);   
  float m = map(value, oldLow, oldHigh, newLow, newHigh);
  
  size = size + 0.01;        // growing in size
  
  float n = noise(m) * size;
  
  noStroke();
  fill(0,0,value,value);
  ellipse(x + width/2, y + height/2, n, n);
  
  theta += 0.02;    // Increment theta with each cycle
  r += 0.05;        // Add something to radius to create a spiral
}
