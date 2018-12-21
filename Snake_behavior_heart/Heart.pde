class Heart {
  
  PImage heart;
  
  void display() {
    heart = loadImage("heart.png");
    
    x[0] = mouseX;      // heart follows mouse
    y[0] = mouseY;
    
    for (int i = 0; i < num; i++) {
      image(heart, x[i], y[i], i/0.5, i/0.5);
  }
  }
}
