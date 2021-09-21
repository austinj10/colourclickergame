void game(){
  background(255);
  
  //colour text
  fill(colors[c]);
  text(words[w],width/2,height/2);
  
  //true or false text
  fill(0);
  textAlign(CENTER,CENTER);
  textFont(nicefont);
  textSize(50);
 
  pushMatrix();
  texttactile(150,75,100,50);
  text("true",200,100);
  popMatrix();
 
  pushMatrix();
  texttactile(550,75,100,50);
  text("false",600,100);
  popMatrix();
  
  //text score
  text("Score:" + score, 700,550);
  
  //timer
  text("" + timer, 50, 550);
  timer = timer - 1;
  if (timer == 0){
   mode = gameover; 
  }
  
}



void gameClicks(){

  //increase score
  if (mouseX > 150 && mouseX < 250 && mouseY > 75 && mouseY < 125){
    score = score + 1;
    w = int(random(0,9));
    c = int(random(0,9));
    fill(colors[c]);
    text(words[w],width/2,height/2);
    timer = 100;
  } else if (mouseX > 550 && mouseX < 650 && mouseY > 75 && mouseY < 125){
    mode = gameover;
  } else if (score > highscore){
    highscore = score;
  } 
}
  
