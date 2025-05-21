//Unit 5 Project

int mode;
boolean clickedOnce = false;
String text;

final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

color black = #222222;
color white = #ffffff;
color darkBlue = #1c5d99;
color lightPink = #ffa69e;
color darkPink = #ff686b;
color purple = #7b2cbf;
color lightPurple = #e0aaff;

float cx, cy;// position
float ballx, bally, balld,   
d;//diameter;

float vx = 1, vy = -20;

//Brick Variables
int[] x;
int[] y;


void setup(){
  size (600, 600);
  //setup array of bricks
  x = new int[3];
  y = new int[3];



}

void mousePressed() {
  if (!clickedOnce) {
    if (mode < 3) {
      mode = mode + 1;
    } else {
      mode = INTRO;
    }
    println("Clicked: mode = " + mode);
    clickedOnce = true;
  }
}

void draw(){

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
