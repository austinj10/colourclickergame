void game(){
  background(255);
  
  //colour text
  fill(colors[c]);
  textSize(50);
  text(words[w],width/2,height/2);
  
  //text score
  fill(0);
  text("Score:" + score, 700,550);
  
  //true or false text
  fill(0);
  textAlign(CENTER,CENTER);
  textFont(nicefont);
  textSize(50);
  text("true",200,100);
  text("false",600,100);
  
  //make text bigger
  if (mouseX > 150 && mouseX < 250 && mouseY > 75 && mouseY < 125){
    fill(255);
    stroke(255);
    rect(150,75,100,100);
    fill(0);
    textSize(60);
    text("true",200,100);
  } else if (mouseX > 550 && mouseX < 650 && mouseY > 75 && mouseY < 125){
    fill(255);
    stroke(255);
    rect(550,75,100,100);
    fill(0);
    textSize(60);
    text("false",600,100);
  }
  
  //timer
  fill(255);
  strokeWeight(5);
  stroke(0);
  rect(25,525,timer,50);
  timer = timer - 1.5;
  if (timer < 0){
   mode = gameover; 
  }
}



void gameClicks(){
  //increase score
  if (mouseX > 150 && mouseX < 250 && mouseY > 75 && mouseY < 125){
    //matched
    if (w == c){
      score = score + 1;
      w = int(random(0,7));
      c = int(random(0,7));
      fill(colors[c]);
      text(words[w],width/2,height/2);
      timer = 100;
    } else {
    //not matched
      mode = gameover;
    }
  } else if (mouseX > 550 && mouseX < 650 && mouseY > 75 && mouseY < 125){
    //not matched
    if (w == c){
      mode = gameover;
    } else {
    //matched
      score = score + 1;
      w = int(random(0,7));
      c = int(random(0,7));
      fill(colors[c]);
      text(words[w],width/2,height/2);
      timer = 100;
    }
  }
}
  
