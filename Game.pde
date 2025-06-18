void game() {
  strokeWeight(5);
  background(pink);
  stroke(white);

  //player1
  fill(darkPurple);
  circle(x, y, d);

  //pkayer2
  fill(lightPurple);
  circle(p, q, d);


  //bouncing circle
  fill(lightBlue);
  circle(ballx, bally, balld);

  //hole
  fill(black);
  circle(holex, holey, holed);

  textSize(40);
  textAlign(CENTER, CENTER);
  fill(255, 0, 0);
  text(point, x, y);

  //movement
  ballx += vx;
  bally += vy;

  //gravity
  vx += ax;
  vy += ay;

  //bouncing off walls
  if (bally <= 0 + balld/2) { // top
    vy = -vy * 0.95;
    bally = balld/2;
  }

  if (bally >= height -balld/2) { //bottom
    vy = -vy * 0.95;
    bally = height -balld/2;
  }


  if (ballx <= 0 + balld/2) { // right
    vx = -vx * 0.95;
    ballx = balld /2;
  }

  if (ballx >= width - balld/2) { // left
    vx = -vx * 0.95;
    ballx = width - balld /2;
  }

  if (dist(x, y, ballx, bally) <= d/2 + balld/2) {

    vx = (ballx - x)/5 ;

    vy = (bally - y)/5 ;
  }

  if (dist(p, q, ballx, bally) <= d/2 + balld/2) {

    vx = (ballx - p)/5 ;

    vy = (bally - q)/5 ;
  }

  if (dist(holex, holey, ballx, bally) <= holed/2 + balld/2) {
    point = point + 1;
    success.play();
  }

  if (aKey) x = x - 5;
  if (dKey) x = x + 5;
  if (wKey) y = y - 5;
  if (sKey) y = y +5;

  if (rightKey) p = p+5;
  if (leftKey) p = p-5;
  if (upKey) q = q -5;
  if (downKey) q = q +5;
}
