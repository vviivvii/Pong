void Handicap() {
  if (player1score - player2score > 2 && player1score > 2) {
    if (ballMoveX >= displayWidth*11.5/18-ballSize/2 && ballMoveX <= displayWidth*11.8/18 -ballSize/2) { 
      if (ballMoveY >= displayHeight*3/16 && ballMoveY <= displayHeight*3/16 + displayHeight*1/6) {
        speedX = speedX * -1;
      }
    }

    if (ballMoveX >= displayWidth*11.5/18-ballSize/2 && ballMoveX <= displayWidth*11.8/18 -ballSize/2) { 
      if (ballMoveY >= displayHeight*12/16 && ballMoveY <= displayHeight*12/16+displayHeight*1/6) {
        speedX = speedX * -1;
      }
    }

    if (ballMoveX >= displayWidth*14/18-ballSize/2 && ballMoveX <= displayWidth*14.3/18 -ballSize/2) { 
      if (ballMoveY >= displayHeight*6.5/16 && ballMoveY <= displayHeight*6.5/16+displayHeight*1.5/6) {
        speedX = speedX * -1;
      }
    }
    rect(displayWidth*11.5/18, displayHeight*3/16, displayWidth*1/100, displayHeight*1/6);
    rect(displayWidth*11.5/18, displayHeight*12/16, displayWidth*1/100, displayHeight*1/6);
    rect(displayWidth*14/18, displayHeight*6.5/16, displayWidth*1/100, displayHeight*1.5/6);
  }


  if (player2score - player1score > 2 && player2score > 2) {
    if (ballMoveX <= displayWidth*6.5/18+displayWidth*1/100+ballSize/2 && ballMoveX >= displayWidth*6.2/18+displayWidth*1/100+ballSize/2) {
      if (ballMoveY >= displayHeight*3/16 && ballMoveY <= displayHeight*3/16+displayHeight*1/6) {
        speedX = speedX * -1;
      }
    }

    if (ballMoveX <= displayWidth*6.5/18+displayWidth*1/100+ballSize/2 && ballMoveX >= displayWidth*6.2/18+displayWidth*1/100+ballSize/2) {
      if (ballMoveY >= displayHeight*12/16 && ballMoveY <= displayHeight*12/16+displayHeight*1/6) {
        speedX = speedX * -1;
      }
    }

    if (ballMoveX <= displayWidth*3/18+displayWidth*1/100+ballSize/2 && ballMoveX >= displayWidth*2.7/18+displayWidth*1/100+ballSize/2) {
      if (ballMoveY >=  displayHeight*6.5/16 && ballMoveY <=  displayHeight*6.5/16+displayHeight*1.5/6) {
        speedX = speedX * -1;
      }
    }
    rect(displayWidth*6.5/18, displayHeight*3/16, displayWidth*1/100, displayHeight*1/6);
    rect(displayWidth*6.5/18, displayHeight*12/16, displayWidth*1/100, displayHeight*1/6);
    rect(displayWidth*3/18, displayHeight*6.5/16, displayWidth*1/100, displayHeight*1.5/6);
  }
  
}
