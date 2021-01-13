int x, y, rectWidth, rectHeight ;
 int buttonX, buttonY, buttonWidth, buttonHeight;
 int thin, thick;
color buttonColour, pink=#F560D2, orange=#FA9D08, resetWhite=#FFFFFF;
color ink, black=#000000;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
//float drawingDiameter;
Boolean draw=false;
//

 void setup() {
  size (600, 400);
  //Portrait Geometry, height is smaller thus dimension of face (circle)
  //
  //Variable Population

  //
  size (600, 400); //Portrait Mode
  //Population
  x = width*1/4;
y = height*1/4;
 rectWidth = width*1/2;
rectHeight = height*1/2;
thin = width*1/100;
thick = thin*2;

  buttonX = width*1/20;
  buttonY = height*1/20;
  buttonWidth = width*1/8;
  buttonHeight = height*1/8;
  thin = width*1/100;
thick = thin*2;
  //
 rect(x, y, rectWidth, rectHeight);


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



  if (draw == true) {
    fill(ink);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
} //End draw()

void mousePressed() {
  if ( mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight ) exit();
println("drawing surface");
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }

}
