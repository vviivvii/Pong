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
Boolean reset = false;
Boolean resetareyousure = false;
Boolean fastreset = false;

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
    fill(#C1C1C1);
    rect(displayWidth*3.3/8, displayHeight*5.7/9, displayWidth*1.33/8, displayHeight*0.5/9);
    rect(displayWidth*2.6/8, displayHeight*6.5/9, displayWidth*2.8/8, displayHeight*2/9);
    fill(255);
    text("Click to start game", displayWidth*3.4/8, displayHeight*6/9 );
    text("Controls", displayWidth*3.7/8, displayHeight*6.9/9);
    text("Player 1", displayWidth*2.9/8, displayHeight*7.2/9);
    text("Player 2", displayWidth*4.6/8, displayHeight*7.2/9);
    textSize(25);
    text("Press W to move up",displayWidth*2.7/8, displayHeight*7.6/9 );
    text("Press S to move down",displayWidth*2.7/8, displayHeight*7.9/9 );
    text("Press D to shoot",displayWidth*2.7/8, displayHeight*8.2/9 );
    text("Press UP to move up",displayWidth*4/8, displayHeight*7.6/9 );
    text("Press DOWN to move down",displayWidth*4/8, displayHeight*7.9/9 );
    text("Press LEFT to shoot",displayWidth*4/8, displayHeight*8.2/9 );
  } else {
  }
  fill(0);
  text("Quit", displayWidth*8.6/16, displayHeight*0.33/4);
  text("Change", displayWidth*6/16, displayHeight*0.32/4);
  text("Color", displayWidth*6.1/16, displayHeight*0.42/4);
  if (resetareyousure == true) {
    fill(155);
    rect(displayWidth*1/16, displayHeight*0.5/16, displayWidth*2.5/16, displayHeight*4/16);
    fill(0);
    textSize(25);
    text("Are you sure you want", displayWidth*1.1/16, displayHeight*1/16);
    text("to reset the game?", displayWidth*1.3/16, displayHeight*1.4/16);
    fill(255);
    rect(displayWidth*1.3/16, displayHeight*2.5/16, displayWidth*0.6/16, displayHeight*1/16);
    rect(displayWidth*2.5/16, displayHeight*2.5/16, displayWidth*0.6/16, displayHeight*1/16);
  }
  if (resetareyousure == true) {
    if ((mouseX > width*1.2/16 && mouseX<width*1.9/16 && mouseY < height*3.5/16) && mouseY > height*2.4/16) {
      fill(124);
      rect(displayWidth*1.3/16, displayHeight*2.5/16, displayWidth*0.6/16, displayHeight*1/16);
      fill(0);
      text("Yes", displayWidth*1.4/16, displayHeight*3.2/16);
    } else {
      fill(244);
      rect(displayWidth*1.3/16, displayHeight*2.5/16, displayWidth*0.6/16, displayHeight*1/16);
      fill(0);
      text("Yes", displayWidth*1.4/16, displayHeight*3.2/16);
    }
  }

  if (resetareyousure == true) {
    if ((mouseX > width*2.44/16 && mouseX<width*3.1/16 && mouseY < height*3.5/16) && mouseY > height*2.4/16) {
      fill(124);
      rect(displayWidth*2.5/16, displayHeight*2.5/16, displayWidth*0.6/16, displayHeight*1/16);
      fill(0);
      text("No", displayWidth*2.66/16, displayHeight*3.2/16);
    } else {
      fill(244);
      rect(displayWidth*2.5/16, displayHeight*2.5/16, displayWidth*0.6/16, displayHeight*1/16);
      fill(0);
      text("No", displayWidth*2.66/16, displayHeight*3.2/16);
    }
  }
  if (fastreset == true) {
    player1score = 0;
    player2score = 0;
    reset = false;
    fastreset = false;
    resetareyousure = false;
    rally = 0;
    rallychecker = 0;
    oof1 = 0;
    oof2 = 0;
    ballMoveX = int(ballStartPositionX);
    ballMoveY = int(ballStartPositionY);
    println("User said yes");
  }
}
void reset() {
  if (reset == true) {
    if (player1score == 10 || player2score == 10) {
      player1score = 0;
      player2score = 0;
      oof1 = 0;
      oof2 = 0;
      reset = false;
      loop();
    } else if (player1score < 9 || player2score < 9) {
      println("Are you sure you want to reset?");
      resetareyousure = true;
    }
  }
}
