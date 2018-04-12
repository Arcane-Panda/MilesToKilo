float km;
boolean clicked = false;
void setup()
{
  size(1500, 600);
  background(255);
}

void draw()
{
  background(255);
  if (clicked == true)
  {
    mToKm(100, 100);
  } else {
    startUp();
  }
  
  //text(mouseX, 500,500);
}
void mToKm(int x, int y )
{
  // road
  fill(#939393);
  rect(x, y, 710, 50);
  fill(255, 255, 0);
  // yellow lines
  for (int i = 0; i < 700; i += 60)
  {
    rect(x+5+i, y+20, 40, 10);
  }
  // numbers
  for (int i = 0; i < 710; i += 30)
  {
    fill(0);
    textSize(12);
    text(i, x+i, y+70);
  }
  //cursor
  if (mouseX >= x && mouseX <= x+710 && mouseY >= y && mouseY <= y + 50)
  {
    triangle(mouseX - 20, y - 20, mouseX + 20, y - 20, mouseX, y);
   
    

      fill(#939393);
      // left wheel
      ellipse(mouseX - 20, y - 25, 10, 10);
      //right wheel
      ellipse(mouseX + 20, y - 25, 10, 10);
      // body
      fill(255, 0, 0);
      rect(mouseX-20, y - 40, 40, 10);
      rect(mouseX - 15, y - 50, 30, 10);

      //number
      fill(0);
      text(mouseX - 100 +"miles", mouseX - 30, y - 60);
  
    
  } 
  
  //////////////// +200
   // road
  fill(#939393);
  rect(x, y  +  200, 1195, 50);
  fill(255, 255, 0);
  // yellow lines
  for (int i = 0; i < 1190; i += 60)
  {
    rect(x+5+i, y+20+200, 40, 10);
  }
  // numbers
  for (int i = 0; i < 1190; i += 40)
  {
    fill(0);
    textSize(12);
    text(i, x+i, y+70+200);
  }
  //cursor
  if (mouseX >= x && mouseX <= x+710 && mouseY >= y && mouseY <= y + 50)
  {
     float km = (mouseX -100) * 1.609344;
     triangle(km - 20 +100 , y - 20+200, km + 20+100, y - 20+200, km+100, y+200);
   
    

      fill(#939393);
      // left wheel
      ellipse(km - 20+100, y - 25+200, 10, 10);
      //right wheel
      ellipse(km + 20+100, y - 25+200, 10, 10);
      // body
      fill(0, 0, 255);
      rect(km-20+100, y - 40+200, 40, 10);
      rect(km - 15+100, y - 50+200, 30, 10);

      //number
      fill(0);
      text(km  + "Kilometers", km - 30+100, y - 60+200);
  
    
  } 
  
  
}
void startUp()
{
  textSize(60);
  fill(0);
  text("Mile to Kilometer Converter", width/4,height/4);
  textSize(30);
  text("By: Lucas Zagal", width/4 +220, 250);
  textSize(25);
  text("Instructions:", width/4 +250, 350);
  textSize(20);
  
  text("Move your mouse along the top road to choose the number of miles, and see the number of kilometers appear on the bottom road!", width/8,380);
  textSize(30);
  text("Click to continue", width/3+100,500);
  if (mousePressed == true)
  {
    clicked = true;
  }
}