PImage img;
int x = 0;
int y = 0;
int z = 0;
int h = 0;
int a = 0;
int b = 0;
void setup() {
  size(500, 500);
  background(255);
  textSize(23);
}
void draw() {
  background(255);
  if ((mouseX>70) && (mouseX<130)&&//set a "if" sentence to define the range of the first circle
    (mouseY>70) && (mouseY<130)) {
    ellipse(100, 100, 110, 110);
  } 
  if ((mouseX>170) && (mouseX<230)&&//set a "if" sentence to define the range of the second circle
    (mouseY>70) && (mouseY<130)) {
    rect(200, 100, 110, 110);
  } 
  if ((mouseX>270) && (mouseX<330)&&//same as above
    (mouseY>70) && (mouseY<130)) {
    triangle(230, 140, 370, 140, 300, 30);
  } 
  if ((mouseX>370) && (mouseX<430)&&//same as above
    (mouseY>70) && (mouseY<130)) {
    quad(350, 75, 350, 155, 455, 120, 460, 35);
  } 
  if ((mouseX>70) && (mouseX<130)&&//same as above
    (mouseY>170) && (mouseY<230)) {
    quad(50, 155, 40, 230, 150, 170, 150, 250);
  } 
  if ((mouseX>170) && (mouseX<230)&&//same as above
    (mouseY>170) && (mouseY<230)) {
    arc(200, 200, 80, 80, 0, PI+QUARTER_PI, PIE);
  } 
  if ((mouseX>270) && (mouseX<330)&&//same as above
    (mouseY>170) && (mouseY<230)) {
    triangle(300, 155, 260, 265, 360, 233);
  }
  if ((mouseX>370) && (mouseX<430)&&//same as above
    (mouseY>170) && (mouseY<230)) {
    quad(350, 215, 350, 218, 475, 185, 475, 182);
  }
  if ((mouseX>70) && (mouseX<130)&&//same as above
    (mouseY>270) && (mouseY<330)) {
    text("Hello", 72, 310);
  }
  if ((mouseX>170) && (mouseX<230)&&//same as above
    (mouseY>270) && (mouseY<330)) {
    text("Click", 172, 310);
  }
  if ((mouseX>270) && (mouseX<330)&&//same as above
    (mouseY>270) && (mouseY<330)) {
    text("To", 287, 310);
  }
  if ((mouseX>370) && (mouseX<430)&&//same as above
    (mouseY>270) && (mouseY<330)) {
    text("Change", 360, 310);
  }
  if ((mouseX>70) && (mouseX<130)&&//same as above
    (mouseY>370) && (mouseY<430)) {
    text("The", 80, 410);
  }
  if ((mouseX>170) && (mouseX<230)&&//same as above
    (mouseY>370) && (mouseY<430)) {
    text("Background", 135, 410);
  }
  if ((mouseX>270) && (mouseX<330)&&//same as above
    (mouseY>370) && (mouseY<430)) {
    text("Color", 270, 410);
  }
  if ((mouseX>370) && (mouseX<430)&&//same as above
    (mouseY>370) && (mouseY<430)) {
    text("Yeah", 373, 410);
  }
  for (a=0; a<(width-100); a+=100) {//a for loop for drawing the all 16 circles
    for (b=0; b<(height-100); b+=100) {
      ellipse(a+100, b+100, 60, 60);
    }
  }

  rectMode(CENTER);
  noStroke();
  fill(x, y, z, h);
  rect(width/2, height/2, width, height);//make a circle mouse icon
  fill(0, 0, 0, 30);
  ellipse(mouseX, mouseY, 20, 20);
  println(mouseX, mouseY);
}

//set up a mousepressed triger,so each time when I press the mouse, the backgound corlor changed.
void mousePressed() {
  x = int(random(256));
  y = int(random(256));
  z = int(random(256)); 
  h = int(random(50));
  println(x, y, z, h);
}