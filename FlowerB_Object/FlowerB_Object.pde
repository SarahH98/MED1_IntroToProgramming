Flower myFlower;

void setup() {
  size(800,800);
  background(#0F0F0F);
  
  int r_bloom = 100;
  int n_bloom = 6;
  float xCenter = width/2;
  float yCenter = height/2;
  int bloomcolor = (#FFEA00);
  
  myFlower = new Flower(r_bloom, n_bloom, xCenter, yCenter, bloomcolor);
}

void draw() {
  myFlower.display();
}
