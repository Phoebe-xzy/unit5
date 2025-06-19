class Torch {
  float x, y;

  Torch(float x, float y) {
    // correctly assign to fields
    x = mouseX;
    y = mouseY;
  }

  void fire() {
    x = mouseX;
    y = mouseY;
    float alpha = 255;            // define a lifespan
    int i = 0;
    while (i < 20) {
      float px = random(x - 60, x + 60);
      float py = random(y - 60, y + 60);
      float w = random(0, 40);
      float h = random(0, 40);
      color c = color(0,255,200);
      fill(c);
      ellipse(px, py, w, h);
      i++;
    }
  }

  void stick() {
    pushMatrix();
    translate(x, y);
    noStroke();
    fill(21,187,109);
    rect(0, 150, 20,200);
    
    
    
    popMatrix();
    
    
  }
}  // ← don’t forget this closing brace
