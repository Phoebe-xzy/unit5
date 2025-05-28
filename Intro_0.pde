//Intro

void intro(){
  text = "Break Out";
  background(255);
  startButton(text, black);
  pointCounter = 0;
  livesCounter = 5;

}

void startButton(String text, color Color){
  pushMatrix();
  translate(width/2, height/2);
  rectMode(CENTER);
  fill(darkBlue);
  rect(0, 0, 350, 250, 20);
  
  textAlign(CENTER, CENTER);
  textSize(50);
  fill(Color);
  text(text, 0, 0);
  
  popMatrix();

}
