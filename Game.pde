float brickd = 60;
String score;
void game() {
  d = 130;
  balld = 20;
  background(black);
  fill(purple);
  stroke(lightPurple);
  strokeWeight(5);
  circle(cx, cy, d);
  fill(darkPink);
  stroke(lightPink);
  circle(ballx, bally, balld);


  //Keyboard
  if (upKey) cy = cy - 5;
  if (downKey) cy = cy + 5;
  if (leftKey) cx = cx - 5;
  if (rightKey) cx = cx+ 5;


  ballx += vx;
  bally += vy;

  //bouncing off walls
  if (bally <= 0 + balld/2) { // top
    vy = -vy * 0.95;
    bally = balld/2;
  }

  if (bally >= height -balld/2) { //bottom
    vy = -vy * 0.95;
    bally = height -balld/2;
    livesCounter = livesCounter - 1;
  }


  if (ballx <= 0 + balld/2) { // right
    vx = -vx * 0.95;
    ballx = balld /2;
  }

  if (ballx >= width - balld/2) { // left
    vx = -vx * 0.95;
    ballx = width - balld /2;
  }
  //bricks -------------------------
  fill(grey);

  int i = 0;
  while (i < n) {
    if (alive[i] == true) {
      manageBricks(i);
    }
    i = i+1;
  }
  score();

  if (pointCounter == n || livesCounter == 0) {
    int k = 0;
    mode = GAMEOVER;
    while (k < n) {
      alive[k] = true;
      k++;
    }
  }
}


void manageBricks(int i) {
  if (y[i] == 100) fill(grey);
  if (y[i] == 200) fill(white);
  if (y[i] == 300) fill(darkPink);
  if (y[i] == 400) fill(darkBlue);
  //if(y[)
  circle(x[i], y[i], brickd);
  //movement


  if (dist(ballx, bally, x[i], y[i]) < (balld / 2 + brickd / 2)) {
    vx = (ballx - x[i]) / 5;
    vy = (bally - y[i]) / 5;
    alive[i] = false;
    pointCounter ++;
  }



  if (dist(cx, cy, ballx, bally) <= d/2 + balld/2) {

    vx = (ballx - cx)/5 ;

    vy = (bally - cy)/5 ;
  }
}

void keyPressed() {
  if (key == CODED) {

    if (keyCode == UP) upKey = true;
    if (keyCode == DOWN) downKey = true;
    if (keyCode == LEFT) leftKey = true;
    if (keyCode == RIGHT) rightKey = true;
  }
}



void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) upKey = false;
    if (keyCode == DOWN) downKey = false;
    if (keyCode == LEFT) leftKey = false;
    if (keyCode == RIGHT) rightKey = false;
  }
}

void score() {
  fill(255);
  textSize(24);
  textAlign(LEFT, TOP);
  text("Score: " + pointCounter, 20, 20);
  textAlign(LEFT, TOP);
  text("Lives: " + livesCounter, 20, 720);
}
