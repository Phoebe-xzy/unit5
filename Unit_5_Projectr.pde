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

void setup(){
  size (600, 600);
  



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

void draw(){



}
