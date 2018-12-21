Ball balls;
Ball[] ball = new Ball[5];  

void setup() {
  size(800,800);
  balls = new Ball();
  for(int i = 1; i < ball.length; i++) {
    ball[i] = new Ball();
  }
}

void draw() {
  background(255);
  balls.display();
  balls.score();
  
  int time = millis()/1000;        // Seconds counter
  text(time,100,100);
  
  for(int i = 0; i < ball.length; i++) {
    ball[i].display();
  }

}
