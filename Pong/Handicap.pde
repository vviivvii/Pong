void Handicap() {
  if (player1score > player2score && player1score > 2) {

    if (ballMoveX >= width*11.5/18-ballSize/2 && ballMoveX <= width*11.8/18 -ballSize/2) { 
      if (ballMoveY >= height*3/16 && ballMoveY <= height*3/16 + height*1/6) {
        speedX = speedX * -1;
      }
    }

    if (ballMoveX >= width*11.5/18-ballSize/2 && ballMoveX <= width*11.8/18 -ballSize/2) { 
      if (ballMoveY >= height*12/16 && ballMoveY <= height*12/16+height*1/6) {
        speedX = speedX * -1;
      }
    }

    if (ballMoveX >= width*14/18-ballSize/2 && ballMoveX <= width*14.3/18 -ballSize/2) { 
      if (ballMoveY >= height*6.5/16 && ballMoveY <= height*6.5/16+height*1.5/6) {
        speedX = speedX * -1;
      }
    }
    rect(width*11.5/18, height*3/16, width*1/100, height*1/6);
    rect(width*11.5/18, height*12/16, width*1/100, height*1/6);
    rect(width*14/18, height*6.5/16, width*1/100, height*1.5/6);
  }
  if (player2score > player1score && player2score > 2) {

    if (ballMoveX <= width*6.5/18+width*1/100+ballSize/2 && ballMoveX >= width*6.2/18+width*1/100+ballSize/2) {
      if (ballMoveY >= height*3/16 && ballMoveY <= height*3/16+height*1/6) {
        speedX = speedX * -1;
      }
    }

    if (ballMoveX <= width*6.5/18+width*1/100+ballSize/2 && ballMoveX >= width*6.2/18+width*1/100+ballSize/2) {
      if (ballMoveY >= height*12/16 && ballMoveY <= height*12/16+height*1/6) {
        speedX = speedX * -1;
      }
    }

    if (ballMoveX <= width*3/18+width*1/100+ballSize/2 && ballMoveX >= width*2.7/18+width*1/100+ballSize/2) {
      if (ballMoveY >=  height*6.5/16 && ballMoveY <=  height*6.5/16+height*1.5/6) {
        speedX = speedX * -1;
      }
    }
    rect(width*6.5/18, height*3/16, width*1/100, height*1/6);
    rect(width*6.5/18, height*12/16, width*1/100, height*1/6);
    rect(width*3/18, height*6.5/16, width*1/100, height*1.5/6);
  }

}
