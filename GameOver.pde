void gameOver() {
  background(0);
  fill(255);
  if (pointCounter == 28) {
    text2 = "You Won!";
    startButton(text2, white);
  }
  
  else if (livesCounter == 0){
    text2 = "You Lost";
    startButton(text2, white);
    //pointCounter = 0;
    //livesCounter = 5;
  }
}
