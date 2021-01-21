int x, y, rectWidth, rectHeight ;
int buttonX, buttonY, buttonWidth, buttonHeight;
int blueX, blueY, blueWidth, blueHeight;
int redX, redY, redWidth, redHeight;
int yellowX, yellowY, yellowWidth, yellowHeight;
int greenX, greenY, greenWidth, greenHeight;
int blackX, blackY, blackWidth, blackHeight;
int eraserX, eraserY, eraserWidth, eraserHeight;
int thin, thick;
color buttonColour, pink=#F560D2, orange=#FA9D08, resetWhite=#FFFFFF, blue=#0352FA, red=#EA3636, yellow=#EAC436, green=#17AF43;
color ink, black=#000000;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
//float drawingDiameter;
Boolean draw=false;
//    
  
void setup() {
  size (600, 400);
  
  //
  //Variable Population

  //
  size (600, 400); //Portrait Mode
  //Population
  x = width*1/4;
  y = height*1/4;
  rectWidth = width*3/4;
  rectHeight = height*3/4;
  thin = width*1/100;
  thick = thin*2;

  buttonX = width*17/20;
  buttonY = height*1/20;
  buttonWidth = width*1/10;
  buttonHeight = height*1/10;
  thin = width*1/100;
  thick = thin*2;

  blueX = width*1/20;
  blueY = height*1/20;
  blueWidth = width*1/10;
  blueHeight = height*1/10;
  thin = width*1/100;
  thick = thin*2;
  
   redX = width*1/20;
  redY = height*4/20;
  redWidth = width*1/10;
  redHeight = height*1/10;
  thin = width*1/100;
  thick = thin*2;
  
   yellowX = width*1/20;
  yellowY = height*7/20;
  yellowWidth = width*1/10;
  yellowHeight = height*1/10;
  thin = width*1/100;
  thick = thin*2;
  
   greenX = width*1/20;
  greenY = height*10/20;
  greenWidth = width*1/10;
  greenHeight = height*1/10;
  thin = width*1/100;
  thick = thin*2;
  
  blackX = width*1/20;
  blackY = height*13/20;
  blackWidth = width*1/10;
  blackHeight = height*1/10;
  thin = width*1/100;
  thick = thin*2;
  
   eraserX = width*1/20;
  eraserY = height*16/20;
  eraserWidth = width*1/10;
  eraserHeight = height*1/10;
  thin = width*1/100;
  thick = thin*2;
  //
  rect(x, y, rectWidth, rectHeight); fill(blue);
  rect(blueX, blueY, blueWidth, blueHeight); fill(red);
  rect(redX, redY, redWidth, redHeight); fill(yellow);
  rect(yellowX, yellowY, yellowWidth, yellowHeight); fill(green); 
  rect(greenX, greenY, greenWidth, greenHeight); fill(black);
  rect(blackX, blackY, blackWidth, blackHeight); fill(resetWhite);
  rect(eraserX, eraserY, eraserWidth, eraserHeight);

  //    
} //End setup()

void draw() {
  println(mouseX, mouseY); //Proves that mouse has builtin variables based on coordinate plane
  if ( mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight ) {
    buttonColour = pink;
  } else {
    buttonColour = orange;
  } //End IF
  fill(buttonColour);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(resetWhite);

if (draw == true && mouseX>x  && mouseX<x+rectWidth  && mouseY>y && mouseY<y+rectHeight) {
    fill(ink);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}    
  
 //End draw()

void mousePressed() {
  if ( mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight ) exit();
  println("drawing surface");
  if (draw == false) {
    draw = true;
  } else {
    draw = false;
  }
}

//End mousePressed
