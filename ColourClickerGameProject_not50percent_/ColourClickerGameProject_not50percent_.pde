//Austin Jeon
//Sept 16, 2021

int mode;
final int intro = 0;
final int game = 1;
final int gameover = 2;

//GIF
PImage[] gif;
int numberofFrames;
int f;

//random words + colors
int w = int(random(0,7));
int c = int(random(0,7));
int r = int(random(1,2));

//score and timer
int score;
int highscore;
float timer;

//array
String[] words;
color [] colors;

//color pallette
color red = #FF0000;
color blue = #0000FF;
color yellow = #FFFF00;
color brown = #964B00;
color grey = #808080;
color aqua = #00FFFF;
color orange = #FFA500;
color purple = #800080;


//text
PFont nicefont;

void setup(){
  size(800,600,FX2D);
  mode = intro;
  nicefont = createFont("nicefont.otf",200);
  
  //randomize colors and words 
  words = new String[8];
  colors = new color[8];
  words[0] = "red";
  colors[0] = red;
  words[1] = "blue";
  colors[1] = blue;
  words[2] = "yellow";
  colors[2] = yellow;
  words[3] = "brown";
  colors[3] = brown;
  words[4] = "grey";
  colors[4] = grey;
  words[5] = "aqua";
  colors[5] = aqua;
  words[6] = "orange";
  colors[6] = orange;
  words[7] = "purple";
  colors[7] = purple;
  
  //score initialization
  score = 0;
  highscore = 0;
  
  //timer initialization
  timer = 100;
  
  //Gif
  numberofFrames = 10;
  gif = new PImage[numberofFrames];
  
  int i = 00;
  while (i < numberofFrames){
    gif[i] = loadImage("frame_"+i+"_delay-0.05s.gif"); 
    i = i + 1;
  }
}



void draw(){
   if (mode == intro){
    intro();
  } else if (mode == game){
    game();
  } else if (mode == gameover){
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
