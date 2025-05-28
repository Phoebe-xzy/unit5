//Unit 5 Project
boolean upKey, downKey, leftKey, rightKey;

int mode;
boolean clickedOnce = false;
String text;
String text2;

final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

int pointCounter;
int livesCounter;


color black = #222222;
color white = #ffffff;
color darkBlue = #1c5d99;
color lightPink = #ffa69e;
color darkPink = #ff686b;
color purple = #7b2cbf;
color darkPurple = #3c096c;
color lightPurple = #e0aaff;
color grey = #778da9;
color red = #800f2f;

float cx, cy;// position
float ballx, bally, balld,
  d;//diameter;

float vx = 1, vy = 20;




//Brick Variables
int[] x;
int[] y;
boolean [] alive;
int n;

int tempx = 100;
int tempy = 100;

void setup() {
  size (800, 800);
  pointCounter = 0;
  livesCounter = 5;

  //setup array of bricks
  n = 28;
  x = new int[n];
  y = new int[n];
  alive = new boolean[n];

  //Auto Generative
  int i = 0;
  while (i < n) {
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;
    tempx = tempx + 100;
    if (tempx == width) {
      tempy = tempy + 100;
      tempx = 100;
    }

    i++;
  }
  cx = width/2;
  cy = height;
}

void mousePressed() {
  if (!clickedOnce) {
    if (mode < 3 && mode != PAUSE) {
      mode = mode + 1;
    } else if (mode == PAUSE) {
      mode = GAME;
    } else {
      mode = INTRO;
    }
    println("Clicked: mode = " + mode);
    clickedOnce = true;
  }
}

void mouseReleased() {
  clickedOnce = false;
}

void draw() {

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
}
