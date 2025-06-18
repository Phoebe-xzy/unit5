

void intro(){
  text = "Click to begin";
  background(255);
  startButton(text);
}

void startButton(String text){
  pushMatrix();
  translate(width/2, height/2);
  rectMode(CENTER);
  fill(yellow);
  rect(0, 0, 350, 250);
  
  textAlign(CENTER, CENTER);
  textSize(50);
  fill(0);
  text(text, 0, 0);
  
  popMatrix();

}
