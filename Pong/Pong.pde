float ballStartPositionX;
float ballStartPositionY;
float ballSize;
int ballMoveX;
int ballMoveY;
int speedX = 3;
int speedY = 3;
int LightMode1;
int LightMode2;
int DarkMode1;
int DarkMode2;
float paddleStartY;
float paddleMoveY;
float paddleHeight;
float paddleWidth;
void setup() {
  fullScreen(); 
  ballStartPositionX = int (displayWidth*1/2);
  ballStartPositionY = int(displayHeight*1/2);
  ballSize = int (displayWidth*1/128);
  ballMoveX = int(ballStartPositionX);
  ballMoveY = int(ballStartPositionY);
  paddleStartY = (height/2) - (height*1/16);
  paddleMoveY = 
  paddleHeight = height* 1/8;
  paddleWidth =  width*1/100;
  
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
  println("X Start:", ballStartPositionX, "Start Y:", ballStartPositionY);
  println("X Move:", ballMoveX, "Y Move", ballMoveY);
  fill(DarkMode1);
  if (ballMoveY >= displayHeight - ballSize/2 || ballMoveY <= 0 + ballSize/2) {
    speedY = speedY * -1;
  }
  if (ballMoveX >= displayWidth - ballSize/2 || ballMoveX <= 0 + ballSize/2) {
    speedX = speedX * -1;
  }

  ballMoveX += speedX;
  ballMoveY += speedY;
  println("X Move:", ballMoveX);
  println("Y Move:", ballMoveY);
  noStroke();
  rect(0 + width*1/30, (height/2) - (height*1/16) , width*1/100, height* 1/8); //Paddle #1
  rect(0 + width*29/30, (height/2) - (height*1/16) , width*1/100, height* 1/8);// Paddle #2
  fill(#00FF97);
  ellipse(ballMoveX, ballMoveY, ballSize, ballSize);
  fill(255);
}
