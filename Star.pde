class Star {
  //instance variabbles or fields

  float x, y, vx, vy, size;
  int h, s, b;
  

  //constructor: speical function that defines how
  //        an object of this class is born
  //        Defines initial values for this fields

  Star() {
    x = random(0, width);
    y = random(0, height);
    vx = random(1,2);
    vy = random(1, 5);
    size = vy; //depth conception
    h = int(random(0, 255));
    s = 30;
    b = 230;
  }

  //behaviour function: these define what a star does

  void show() {
    fill(h, s, b);
    circle(x, y, size);
  }

  void act() {
    y = y + vy;
    x = x + vx;
    if (y > height + size) {
      y = -size;
    }
    
    if (x > width + size){
      x = -size;  
    }
  }
}
