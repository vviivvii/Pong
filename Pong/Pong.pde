//Global Varlables
float ballStartPositionX;
float ballStartPositionY;
float ballSize;
int ballMoveX;
int ballMoveY;
int speedX = 3; // speed
int speedY = 3; // speed
int LightMode1;
int LightMode2;
int DarkMode1;
int DarkMode2;
float paddleStartY;
float paddleMoveXLeft;
float paddleMoveYLeft;
float paddleMoveXRight;
float paddleMoveYRight;
float paddleWidth;
float paddleHeight;
Boolean paddleRightUp = false;
Boolean paddleRightDown = false;
Boolean paddleLeftUp = false;
Boolean paddleLeftDown = false;
int player1score = 0;
int player2score = 0;

void setup() {
  fullScreen(); 
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
  paddleMoveYLeft = (height/2) - (height*1/16);
  paddleMoveYRight = (height/2) - (height*1/16);

  DarkMode1 = 255;//Should be a button
  DarkMode2 = 51; //Should be a button
  LightMode1 = 51;
  LightMode2 = 255;

  //Create a ball
  ellipse(ballStartPositionX, ballStartPositionY, ballSize, ballSize);
}
void draw() {

  //Move the ball
  background(DarkMode2);
  //println("X Start:", ballStartPositionX, "Start Y:", ballStartPositionY);
  //println("X Move:", ballMoveX, "Y Move", ballMoveY);
  if ( ballMoveX <= paddleMoveXLeft ) {
    noLoop(); // End the Game
    player2score = 1;
  }
  if ( ballMoveX >= paddleMoveXRight+paddleWidth ) {
    noLoop(); // End the Game
    player1score = 1;
  }
  fill(DarkMode1);
  if (ballMoveY >= displayHeight - ballSize/2 || ballMoveY <= 0 + ballSize/2) {
    speedY = speedY * -1;
  }
  if (ballMoveX >= displayWidth - ballSize/2 || ballMoveX <= 0 + ballSize/2) {
    speedX = speedX * -1;
  }
// Right paddle
  if (paddleRightUp == true ) {
    paddleMoveYRight -= 3;
  }
  if (paddleRightDown == true) {
    paddleMoveYRight += 3;
  }
  if (paddleMoveYRight <= 0 ) {
    paddleMoveYRight = 0;
  }
  if (paddleMoveYRight >= displayHeight-paddleHeight ) {
    paddleMoveYRight = displayHeight-paddleHeight;
  }

//Left paddle
  if (paddleLeftUp == true ) {
    paddleMoveYLeft -= 3;
  }
  if (paddleLeftDown == true) {
    paddleMoveYLeft += 3;
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
    }
  }
  if (ballMoveX >= paddleMoveXRight-ballSize/2) { // Bounce or Goal
    if (ballMoveY >= paddleMoveYRight && ballMoveY <= paddleMoveYRight+paddleHeight) {
      speedX = speedX * -1;
    }
  }
  
  ballMoveX += speedX;
  ballMoveY += speedY;
  println("Ball " + "X Move:", ballMoveX + " Y Move:", ballMoveY);
  noStroke();
  rect(paddleMoveXLeft, paddleMoveYLeft, paddleWidth, paddleHeight); //Paddle #1
  rect(paddleMoveXRight, paddleMoveYRight, paddleWidth, paddleHeight);// Paddle #2
  fill(#00FF97);
  ellipse(ballMoveX, ballMoveY, ballSize, ballSize);
  fill(255);
  println ("Player 1", player1score);
  println ("Player 2", player2score);
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
}
