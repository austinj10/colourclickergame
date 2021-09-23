void gameover(){
  background(0);
  
  //game over text
  fill(255);
  text("gameover", width/2, 200);
  
  //high score text
  text("high score:" + highscore, 400, 500);
  
  if (score > highscore){
   highscore = score; 
  } else {
   highscore = highscore;
  }
}



void gameoverClicks(){
   reset();
   if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height){
    mode = intro;
   }
}



void reset(){
  //game initialization
  score = 0;
  
  w = int(random(0,7));
  c = int(random(0,7));
  
  timer = 100;
}
