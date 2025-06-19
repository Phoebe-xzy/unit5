class Particle {
  PVector pos;
  PVector vel;
  float lifespan;
  color col;

  Particle(float sx, float sy) {
    pos = new PVector(sx, sy);
    vel = new PVector(random(-1, 1), random(-3, -1));
    lifespan = 255;
    col = color(255, random(150, 255), 0, lifespan);
  }

  void update() {
    pos.add(vel);
    lifespan -= 3;
    col = color(255, random(150, 255), 0, lifespan);
  }

  void display() {
    noStroke();
    fill(col);
    ellipse(pos.x, pos.y, 20, 20);
  }

  boolean isDead() {
    return lifespan <= 0;
  }
}
