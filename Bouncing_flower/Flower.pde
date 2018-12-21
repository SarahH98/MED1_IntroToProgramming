class Flower {
  
  // Variables
  float r_bloom;   // radius of flower bloom
  int n_bloom;     // number of blooms
  float xCenter;   // x-position of flowercenter
  float yCenter;   // y-position of flowercenter
  int bloomcolor;  // color of blooms
  
  int speedX=3;    // speed of flower
  int speedY=4;
  
Flower(float temp_r_bloom, int temp_n_bloom, float temp_xCenter, float temp_yCenter, int temp_bloomcolor) {
  r_bloom = temp_r_bloom;
  n_bloom = temp_n_bloom;
  xCenter = temp_xCenter;
  yCenter = temp_yCenter;
  bloomcolor = temp_bloomcolor;
}
  
void display() {
  float ballX;
  float ballY;
  
  fill(bloomcolor);
  for (float i=0; i<PI*2; i=i+2*PI/n_bloom) {
    ballX = xCenter + r_bloom*cos(i);
    ballY = yCenter + r_bloom*sin(i);
    ellipse(ballX,ballY,r_bloom,r_bloom);
    ballX = ballX + speedX;                          // speed for flower
    ballY = ballY + speedY;
  }
  fill(255,0,0);
  ellipse(xCenter,yCenter,r_bloom*1.5,r_bloom*1.5);
  xCenter = xCenter + speedX;                        // speed for flower
  yCenter = yCenter + speedY;
}

void bounce() {
  // x-coordinate
  if(xCenter > width - r_bloom) { //Moving the circlecenter
    speedX=-speedX;
  }
  
  else if(xCenter < 0 + r_bloom) {
    speedX=-speedX;
  }
    
  // y-coordinate
  if(yCenter > height - r_bloom) { //Moving the circlecenter
    speedY=-speedY;
  }
  
  else if(yCenter < 0 + r_bloom) {
    speedY=-speedY;
   }
}
}
