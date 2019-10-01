void Handicap() {
  if (player1score > player2score && player1score > 3) {
    if ((ballMoveX <= width*11.5/18+height*3/16+width*1/100+ballSize/2)) {
    speedX = speedX * -1;
    }
     rect(width*11.5/18, height*3/16, width*1/100, height*1/6);
    rect(width*11.5/18, height*12/16, width*1/100, height*1/6);
    rect(width*14/18, height*6.5/16, width*1/100, height*1.5/6);
  }
  if (player2score > player1score && player2score > 3) {
    rect(width*6.5/18, height*3/16, width*1/100, height*1/6);
    rect(width*6.5/18, height*12/16, width*1/100, height*1/6);
    rect(width*3/18, height*6.5/16, width*1/100, height*1.5/6);
  }
}
