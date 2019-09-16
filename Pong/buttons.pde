void buttons () {
  //buttons
  if ((mouseX > width*8.34/16 && mouseX<width*9.4/16 && mouseY < height*2/16) && mouseY > height*0.4/16) {
    fill(124);
    rect(width*8.4/16, height*0.1/4, width*1/16, height*0.4/4);
    fill(0);
  } else {
    fill(244);
    rect(width*8.4/16, height*0.1/4, width*1/16, height*0.4/4);
    fill(0);
  }
  if ((mouseX > width*5.95/16 && mouseX<width*7/16 && mouseY < height*2/16) && mouseY > height*0.4/16) {
    fill(124);
    rect(width*6/16, height*0.1/4, width*1/16, height*0.4/4);
    fill(0);
  } else {
    fill(244);
    rect(width*6/16, height*0.1/4, width*1/16, height*0.4/4);
    fill(0);
  }
  
  //Start game
  textSize(30);
  fill(255);
  if (clickToStart == 0) {
    text("Click to start game", width*3.4/8, height*6/9 );
  } else {
  }
  
}
