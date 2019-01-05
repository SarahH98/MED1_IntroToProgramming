int numberOfBalls = 5;
Ball[] ball = new Ball[numberOfBalls];

int score=-numberOfBalls;
int scoreX=420;
int scoreY=150;

void setup() {
  size(800,800);
  //balls = new Ball();
  for(int i = 0; i < ball.length; i++) {
    ball[i] = new Ball();
  }
}

void draw() {
  background(255);
  
  int time = millis()/1000;        // Second counter
  text(time,100,100);
  
  for(int i = 0; i < ball.length; i++) {
    ball[i].display();
  }
  
  fill(0);
    textSize(40);
    text(score,scoreX,scoreY);
    text("Score",scoreX-120,scoreY);

}
