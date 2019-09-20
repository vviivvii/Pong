float ballStartPositionX;
float ballStartPositionY;
float ballSize;
float paddleStartY;
float paddleMoveXLeft;
float paddleMoveYLeft;
float paddleMoveXRight;
float paddleMoveYRight;
float paddleWidth;
float paddleHeight;
int LightMode1;
int LightMode2;
int DarkMode1;
int DarkMode2;

void buttons () {
  //buttons
  if ((mouseX > width*8.34/16 && mouseX<width*9.4/16 && mouseY < height*2/16) && mouseY > height*0.4/16) {
    fill(124);
    rect(displayWidth*8.4/16, displayHeight*0.1/4, displayWidth*1/16, displayHeight*0.4/4);
    fill(0);
  } else {
    fill(244);
    rect(displayWidth*8.4/16, displayHeight*0.1/4, displayWidth*1/16, displayHeight*0.4/4);
    fill(0);
  }
  if ((mouseX > width*5.95/16 && mouseX<width*7/16 && mouseY < height*2/16) && mouseY > height*0.4/16) {
    fill(124);
    rect(displayWidth*6/16, displayHeight*0.1/4, displayWidth*1/16, displayHeight*0.4/4);
    fill(0);
  } else {
    fill(244);
    rect(displayWidth*6/16, displayHeight*0.1/4, displayWidth*1/16, displayHeight*0.4/4);
    fill(0);
  }
  
  //Start game
  textSize(30);
  fill(255);
  if (clickToStart == 0) {
    text("Click to start game", displayWidth*3.4/8, displayHeight*6/9 );
  } else {
  }
  
}
