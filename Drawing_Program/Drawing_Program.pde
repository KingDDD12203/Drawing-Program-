int buttonX, buttonY, buttonWidth, buttonHeight;
 int thin, thick;
color buttonColour, pink=#F560D2, orange=#FA9D08, resetWhite=#FFFFFF;
//

 void setup() {
  size (600, 400);
  //Portrait Geometry, height is smaller thus dimension of face (circle)
  //
  //Variable Population

  //
  size (600, 400); //Portrait Mode
  //Population
  buttonX = width*1/4;
  buttonY = height*1/4;
  buttonWidth = width*1/2;
  buttonHeight = height*1/2;
  thin = width*1/100;
thick = thin*2;
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
} //End draw()

void mousePressed() {
  if ( mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight ) exit();
}//End mousePressed()  
