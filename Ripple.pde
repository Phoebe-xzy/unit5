class Ripple {
  //instance variables or fields
  float x, y, size, alpha;
  int h, s, b;

  //constructor
  Ripple() {
    x = random(width);
    y = random(600, height);
    size = random(100);
    h = int(random(0, 255));
    s = 30;
    b = 230;
  }

  //behaviour functions
  void show() {
    noFill();
    strokeWeight(1);
    stroke(h, s, b, alpha);
    alpha = map(size, 0, 200, 255, 0);
    ellipse(x, y, size, size/2);
  }

  void act() {
    size = size + 3;
    if (size >= 100) {
      x = random(width);
      y = random(550, height);
      size = 0;
    }
  }
}
