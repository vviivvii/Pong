float ballStartPositionX;
float ballStartPositionY;
float ballSize;
int ballMoveX;
int ballMoveY;
int speedX = 3;
int speedY = 3;
void setup() {
  fullScreen(); 
  ballStartPositionX = int (displayWidth*1/2);
  ballStartPositionY = int(displayHeight*1/2);
  ballSize = int (displayWidth*1/128);
  ballMoveX = int(ballStartPositionX);
  ballMoveY = int(ballStartPositionY);

  //Create a ball
  ellipse(ballStartPositionX, ballStartPositionY, ballSize, ballSize);
}
void draw() {
  //Move the ball
  background(51);
  println("X Start:", ballStartPositionX, "Start Y:", ballStartPositionY);
  println("X Move:", ballMoveX, "Y Move", ballMoveY);
  if (ballMoveY >= height - ballSize/2) {
    speedY = speedY * -1;
  }
  if (ballMoveX >= width - ballSize/2) {
    speedX = speedX * -1;
  }
  if (ballMoveY >= height - ballSize/2) {
    speedY = speedY * -1;
  }
  ballMoveX += speedX;
  ballMoveY += speedY;
  println("X Move:", ballMoveX);
  println("Y Move:", ballMoveY);
  ellipse(ballMoveX, ballMoveY, ballSize, ballSize);
}
