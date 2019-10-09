//Global Varlables
int ballMoveX;
int ballMoveY;
int speedX = 3; // speed
int speedY = 3; // speed
Boolean paddleRightUp = false;
Boolean paddleRightDown = false;
Boolean paddleLeftUp = false;
Boolean paddleLeftDown = false;
int player1score = 0;
int player2score = 0;
int rally = 0;
int rallychecker = 0;
int clickToStart = 0;
Boolean lightModeOn = false;
Boolean rallya = true;

void setup() {
  fullScreen(); 
  screenSizeChecker();
  ballStartPositionX = int (displayWidth*1/2);
  ballStartPositionY = int(displayHeight*1/2);
  ballSize = int (displayWidth*1/128);
  ballMoveX = int(ballStartPositionX);
  ballMoveY = int(ballStartPositionY);

  paddleStartY = (height/2) - (height*1/16);
  paddleMoveYLeft = paddleStartY; 
  paddleMoveYRight = paddleStartY;
  paddleHeight = displayHeight* 1/8;
  paddleWidth =  displayWidth*1/100;
  paddleMoveXLeft = 0+displayWidth*1/30;
  paddleMoveXRight = 0+displayWidth*29/30;
  paddleMoveYLeft = (displayHeight/2) - (displayHeight*1/16);
  paddleMoveYRight = (displayHeight/2) - (displayHeight*1/16);
  paddlePewXleft = paddleMoveXLeft;
  paddlePewYLeft = paddleMoveYLeft;

  //Colors
  DarkMode1 = 255;
  DarkMode2 = 51; 
  LightMode1 = 51;
  LightMode2 = 255;

  int number = int (random (-4, 4));
  while (number == 0 || number == 1 || number == 2 || number == -1 || number == -2) {
    number = int (random (-4, 4));
  }
  speedX = number;
  println("starting speedX", speedX);
  number = int (random (-4, 4));

  while (number == 0 || number == 1 || number == 2 || number == -1 || number == -2) {
    number = int (random (-4, 4));
  }
  speedY = number;
  println("starting speedY", speedX);

  //Create a ball
  ellipse(ballStartPositionX, ballStartPositionY, ballSize, ballSize);
  noLoop();
}
void draw() {

  //Move the ball
  if (lightModeOn == true) {
    background(LightMode2);
  } else {
    background(DarkMode2);
  }

  //println(lightModeOn);
  //println("X Start:", ballStartPositionX, "Start Y:", ballStartPositionY);
  //println("X Move:", ballMoveX, "Y Move", ballMoveY);

  if (player2score == 10) {
    println("PLAYER TWO WINS");
    noLoop();
  }

  if ( ballMoveX <= paddleMoveXLeft ) {
    //noLoop(); // End the Game
    ballMoveX = int(ballStartPositionX);
    ballMoveY = int(ballStartPositionY);
    player2score += 1;
    rally = 0;
    rallychecker = 0;
    fill(#FF0000);
    rect( displayWidth*0, displayHeight*0, displayWidth *1/2, displayHeight*1);
    fill(#0000FF);
    rect( displayWidth*0, displayHeight*0, displayWidth *1/2, displayHeight*1);
    fill(#FF0000);
    rect( displayWidth*0, displayHeight*0, displayWidth *1/2, displayHeight*1);
  }
  if ( ballMoveX >= paddleMoveXRight+paddleWidth ) {
    //noLoop(); // End the Game
    ballMoveX = int(ballStartPositionX);
    ballMoveY = int(ballStartPositionY);
    player1score += 1;
    rally = 0;
    rallychecker = 0;
    fill(#FF0000);
    rect( displayWidth*1/2, displayHeight*0, displayWidth *1, displayHeight*1);
    fill(#0000FF);
    rect( displayWidth*1/2, displayHeight*0, displayWidth *1, displayHeight*1);
    fill(#FF0000);
    rect( displayWidth*1/2, displayHeight*0, displayWidth *1, displayHeight*1);
  }
  if (lightModeOn == true) {
    fill(LightMode1);
  } else {
    fill(DarkMode1);
  }

  Handicap();


  if (ballMoveY >= displayHeight - ballSize/2 || ballMoveY <= 0 + ballSize/2) {
    speedY = speedY * -1;
  }
  if (ballMoveX >= displayWidth - ballSize/2 || ballMoveX <= 0 + ballSize/2) {
    speedX = speedX * -1;
  }

  if (ballMoveY <= displayHeight*2/16 && ballMoveX >= displayWidth*8.3/16 + ballSize/2 && ballMoveX <= displayWidth*9.4/16 && ballMoveY >= displayHeight*0.4/16) {
    speedY = speedY * -1;
  }

  if (ballMoveY <= displayHeight*2/16 && ballMoveX >= displayWidth*5.7/16 + ballSize/2 && ballMoveX <= displayWidth*6.6/16 && ballMoveY >= displayHeight*0.4/16) {
    speedY = speedY * -1;
  }

  // Right paddle
  if (paddleRightUp == true ) {
    paddleMoveYRight -= 4;
  }
  if (paddleRightDown == true) {
    paddleMoveYRight += 4;
  }
  if (paddleMoveYRight <= 0 ) {
    paddleMoveYRight = 0;
  }
  if (paddleMoveYRight >= displayHeight-paddleHeight ) {
    paddleMoveYRight = displayHeight-paddleHeight;
  }

  //Left paddle
  if (paddleLeftUp == true ) {
    paddleMoveYLeft -= 4;
  }
  if (paddleLeftDown == true) {
    paddleMoveYLeft += 4;
  }
  if (paddleMoveYLeft <= 0 ) {
    paddleMoveYLeft = 0;
  }
  if (paddleMoveYLeft >= displayHeight-paddleHeight ) {
    paddleMoveYLeft = displayHeight-paddleHeight;
  }

  // Bounce off Paddles, order of arithemtic important
  if (ballMoveX <= paddleMoveXLeft+paddleWidth+ballSize/2) { // Bounce or Goal
    if (ballMoveY >= paddleMoveYLeft && ballMoveY <= paddleMoveYLeft+paddleHeight) {
      speedX = speedX * -1;
      rallychecker += 1;
      if (rallychecker >= 3) {      
        if (rallya == true) {
          rally +=1;
          rallya = false;
        } else if (rallya == false) {
          rallya = true;
        }
      }
    }
  }
  if (ballMoveX >= paddleMoveXRight-ballSize/2) { // Bounce or Goal
    if (ballMoveY >= paddleMoveYRight && ballMoveY <= paddleMoveYRight+paddleHeight) {
      speedX = speedX * -1;
      rallychecker+=1;

      if (rallychecker >= 3) {
        if (rallya == true) {
          rally +=1;
          rallya = false;
        } else if (rallya == false) {
          rallya = true;
        }
      }
    }
  }
  if ( Pew1 == true) {
    if (paddlePewXleft >= paddleMoveXRight- displayWidth*2/50/2) { 
      if (paddlePewYLeft >= paddleMoveYRight && paddlePewYLeft <= paddleMoveYRight + paddleHeight  - displayHeight*3/50) {
        oof2 += 1;
        Pew1 = false;
      }
    }
  }

  if ( Pew2 == true) {
    if (paddlePewXright <= paddleMoveXLeft+paddleWidth-displayWidth*2/50/2) { // Bounce or Goal
      if (paddlePewYRight >= paddleMoveYLeft && paddlePewYRight <= paddleMoveYLeft+ paddleHeight - displayHeight*3/50) {
        oof1 += 1;
        Pew2 = false;
      }
    }
  }
  if (paddlePewXleft >= displayWidth || paddlePewXleft <= 0 ) {
    Pew1 = false;
  }
  
  if (paddlePewXright >= displayWidth || paddlePewXright <= 0 ) {
    Pew2 = false;
  }
  
  
  ballMoveX += speedX; 
  ballMoveY += speedY;


  //println("Ball " + "X Move:", ballMoveX + " Y Move:", ballMoveY);

  noStroke();
  rect(paddleMoveXLeft, paddleMoveYLeft, paddleWidth, paddleHeight); //Paddle #1
  rect(paddleMoveXRight, paddleMoveYRight, paddleWidth, paddleHeight);// Paddle #2


  if (lightModeOn == true) {
    fill(LightMode1);
  } else {
    fill(DarkMode1);
  }
  //Text
  textSize(108);
  text(player1score, displayWidth*4/16, displayHeight*0.1/1);
  text(player2score, displayWidth*11/16, displayHeight*0.1/1);

  // Hitpoints
  if (oof1 == 0) {
    fill(#00FF00);
    rect(displayWidth*3.6/16, displayHeight*2/16, displayWidth*1.5/50, displayHeight*3/100);
    rect(displayWidth*4.1/16, displayHeight*2/16, displayWidth*1.5/50, displayHeight*3/100);
    rect(displayWidth*4.6/16, displayHeight*2/16, displayWidth*1.5/50, displayHeight*3/100);
  } else if (oof1 == 1) {
    fill (#FFFF00);
    rect(displayWidth*4.1/16, displayHeight*2/16, displayWidth*1.5/50, displayHeight*3/100);
    rect(displayWidth*4.6/16, displayHeight*2/16, displayWidth*1.5/50, displayHeight*3/100);
  } else if ( oof1 == 2) {
    fill(#FF0000);
    rect(displayWidth*4.6/16, displayHeight*2/16, displayWidth*1.5/50, displayHeight*3/100);
  } else if ( oof1 == 3) {
    oof1 = 0;
    player2score += 1;
  }

  if (oof2 == 0) {
    fill(#00FF00);
    rect(displayWidth*10.6/16, displayHeight*2/16, displayWidth*1.5/50, displayHeight*3/100);
    rect(displayWidth*11.1/16, displayHeight*2/16, displayWidth*1.5/50, displayHeight*3/100);
    rect(displayWidth*11.6/16, displayHeight*2/16, displayWidth*1.5/50, displayHeight*3/100);
  } else if (oof2 == 1) {
    fill (#FFFF00);
    rect(displayWidth*11.1/16, displayHeight*2/16, displayWidth*1.5/50, displayHeight*3/100);
    rect(displayWidth*11.6/16, displayHeight*2/16, displayWidth*1.5/50, displayHeight*3/100);
  } else if ( oof2 == 2) {
    fill(#FF0000);
    rect(displayWidth*11.6/16, displayHeight*2/16, displayWidth*1.5/50, displayHeight*3/100);
  } else if ( oof2 == 3) {
    oof2 = 0;
    player1score += 1;
  }
  
  if (rally >= 1) {
    textSize(80);
    text("rally " + rally, displayWidth*7/16, displayHeight - (displayHeight*5/100));
  }
  buttons();

  //ball Color 
  if (lightModeOn == true) {
    fill(#0000FF); //Light mode
  } else {
    fill(#00FF97); //Dark mode
  }
  ellipse(ballMoveX, ballMoveY, ballSize, ballSize);

  if (player1score == 10) {
    fill(#76686D);
    rect(displayWidth*3/16, displayHeight*4/16, displayWidth*10/16, displayHeight*8/16);
    fill(0);
    textSize(60);
    text("PLAYER ONE WINS!", displayWidth*6.4/18, displayHeight*8.4/16);
    textSize(50);
    text("Press R to reset", displayWidth*7.1/18, displayHeight*9.2/16);
    println("PLAYER ONE WINS");
    noLoop();
  }

  if (player2score == 10) {
    fill(#76686D);
    rect(displayWidth*3/16, displayHeight*4/16, displayWidth*10/16, displayHeight*8/16);
    fill(0);
    textSize(60);
    text("PLAYER TWO WINS!", displayWidth*6.4/18, displayHeight*8.4/16);
    textSize(50);
    text("Press R to reset", displayWidth*7.1/18, displayHeight*9.2/16);
    println("PLAYER TWO WINS");
    noLoop();
  }
}

void keyPressed () {
  if (key == CODED && keyCode == UP) {
    paddleRightUp = true; //Codes continuous action
    paddleRightDown = false; //Only one action at a time
  }
  if (key == CODED && keyCode == DOWN) {
    paddleRightDown = true; //Codes continuous action
    paddleRightUp = false;
  }
  if (key == CODED && key == 'W' || key == 'w') {
    paddleLeftUp = true; //Codes continuous action
    paddleLeftDown = false;
  }
  if (key == CODED && key == 'S' || key == 's') {
    paddleLeftDown = true; //Codes continuous action
    paddleLeftUp = false;
  }
  if (key == CODED && key == 'R' || key == 'r') {
    reset = true;
    reset();
  }
  if (key == CODED && key == 'D' || key == 'd') {
    Pew1 = true;
    paddlePewXleft = paddleMoveXLeft;
    paddlePewYLeft = paddleMoveYLeft;
    println("Hits on player 2: " + oof2);
  }
  if (key == CODED && keyCode == LEFT) {
    Pew2 = true;
    paddlePewXright = paddleMoveXRight;
    paddlePewYRight = paddleMoveYRight;
    println("Hits on player 1: " + oof1);
  }
}

void mouseClicked() {
  clickToStart += 1;
  if ((mouseX > width*8.34/16 && mouseX<width*9.4/16 && mouseY < height*2/16) && mouseY > height*0.4/16) {
    exit();
  }

  if ((mouseX > width*5.95/16 && mouseX<width*7/16 && mouseY < height*2/16) && mouseY > height*0.4/16) {
    if (lightModeOn == false) {
      lightModeOn = true;
    } else {
      lightModeOn = false;
    }
  }
  if (resetareyousure == true) {
    if ((mouseX > width*1.2/16 && mouseX<width*1.9/16 && mouseY < height*3.5/16) && mouseY > height*2.4/16) {
      fastreset = true;
    }
  }
  if (resetareyousure == true) {
    if ((mouseX > width*2.44/16 && mouseX<width*3.1/16 && mouseY < height*3.5/16) && mouseY > height*2.4/16) {
      resetareyousure = false;
      reset = false;
      println("User said no");
    }
  }
  if (clickToStart == 1) {
    loop();
    clickToStart +=1;
  }
}
