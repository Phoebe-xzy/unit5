import processing.sound.*;

//Mode Framework
int mode;

String text;


final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

//Unit 5 Project
color darkPurple = #390099;
color lightPurple = #cdb4db;
color white = #ffffff;
color black = #000000;
color pink = #ffa5ab;
color lightBlue = #90e0ef;
color lightGreen = #adc178;
color yellow = #ffd670;

//Target---------------------
float x, y, p, q, // position
  d;//diameter

//Key Variables -------------------
boolean aKey, dKey, wKey, sKey;
boolean downKey, upKey, leftKey, rightKey;

float ballx, bally, balld;
float vx = 1, vy = -20;
float ax, ay;
int point;

//whole variable
float holex, holey, holed = 150;

boolean clickedOnce = false;

//Sound Variable
SoundFile fail;
SoundFile success;
SoundFile music;

void setup() {
  size(600, 600);

  //load Sounds
  fail = new SoundFile(this, "FAILURE.wav");
  success = new SoundFile(this, "SUCCESS.wav");


  holex = width/2;
  holey = height;

  x = width/2 - 200;
  y = height/2;
  d = 100;

  p = width/2 + 200;
  q = height/2;

  ballx = width/2;
  bally = height/2;
  balld = 50;

  ax = 0;
  ay = 1;

  mode = 0;
}


void mousePressed() {
  if (!clickedOnce) {
    if (mode < 3) {
      mode++;
    } else {
      mode = INTRO;
    }
    println("Clicked: mode = " + mode);
    clickedOnce = true;
  }
}

void draw() {
  if (point >= 20) {
    mode = GAMEOVER;
  }
  


  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameOver();
  } else if (mode == PAUSE) {
    pause();
  } else {
    println("ERROR!, Mode is " + mode);
  }


  if (!mousePressed) {
    clickedOnce = false;
  }
}

void keyPressed() {
  if (key == 'a') aKey = true;
  if (key == 'd') dKey = true;
  if (key == 'w') wKey = true;
  if (key == 's') sKey = true;

  if (keyCode == RIGHT) rightKey = true;
  if (keyCode == LEFT) leftKey = true;
  if (keyCode == UP) upKey = true;
  if (keyCode == DOWN) downKey = true;
}

void keyReleased() {
  if (key == 'a') aKey = false;
  if (key == 'd') dKey = false;
  if (key == 'w') wKey = false;
  if (key == 's') sKey = false;

  if (keyCode == RIGHT) rightKey = false;
  if (keyCode == LEFT) leftKey = false;
  if (keyCode == UP) upKey = false;
  if (keyCode == DOWN) downKey = false;
}
