void pause(){
  drawPause();
}

void drawPause(){
  pushMatrix();
  translate(width/2, height/2);
  scale(2);
  strokeWeight(5);
  stroke(0);
  fill(255);
  circle(0, 0, 80);
  
  //two rect bars
  fill(0);
  rectMode(CENTER);
  rect(-15,0,10,30);
  rect(15,0,10,30);
  popMatrix();

}
