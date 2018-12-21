Heart heart;

int num = 20;            // displays not more than 20 hearts
int[] x = new int[num];
int[] y = new int[num];

void setup() { 
  heart = new Heart();
  size(600, 600);
}

void draw() {
  // Shift the values to the right
  for (int i = num-1; i > 0; i--) {
    x[i] = x[i-1];
    y[i] = y[i-1];
    heart.display();
  }
}
