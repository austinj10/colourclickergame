void intro(){
  background(0);
 
 //gif
 image(gif[f], 275, 275, 200, 200);
 println(frameCount);
 if (frameCount % 2 == 0) f = f + 1;
 if (f == numberofFrames) f = 0;
 
 //title text
 fill(255);
 textAlign(CENTER,CENTER);
 textFont(nicefont);
 textSize(50);
 text("colour match", width/2, 200);

 
}

void introClicks(){
  if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height){
    mode = game;
  }
}
