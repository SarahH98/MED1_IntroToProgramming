class Ball {
  
float mcD=50;                // main circle
float mcC;

float tcX;                   // target circle
float tcY;
float tcD;
float tcC;

float R=random(255);         // colors
float G=random(255);
float B=random(255);

int score=0;
int scoreX=420;
int scoreY=150;
  
  void display() {
    fill(0);                                    // draw circles
    ellipse(mouseX,mouseY,mcD,mcD);
    fill(R,G,B);
    ellipse(tcX,tcY,tcD,tcD);
  
    if (dist(mouseX,mouseY,tcX,tcY)<= mcD/2 + tcD/2) {  // collision
      score=score+1;
      tcX= random(width); 
      tcY= random(height);
      tcD= random(30,150);
      tcC= color(R,G,B);
    }
  }

  void score() {                  // create a score
    fill(0);
    textSize(40);
    text(score,scoreX,scoreY);
    text("Score",scoreX-120,scoreY);
  }


}
