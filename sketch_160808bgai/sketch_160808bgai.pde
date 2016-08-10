int x = 0;
int y = 0;
int z = 0;
int h = 0;
int a = 0;
int b = 0;
PVector position, position2, position3, position4, velocity;
void setup() {
  frameRate(2);
  size(500, 500);
  background(255);
  textSize(23);
  position = new PVector(0, 100);
  position2 = new PVector(0, 200);
  position3 = new PVector(0, 300);
  position4 = new PVector(0, 400);
  velocity = new PVector(10, 0);
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
      rect(a+100, b+100, 60, 60);
    }
  }
  for (a=0; a<(width-50); a+=100) {//a for loop for drawing the all 16 circles
    for (b=0; b<(height-100); b+=100) {
      ellipse(a+50, b+100, 30, 30);
    }
  }
  for (a=0; a<(width-100); a+=100) {//a for loop for drawing the all 16 circles
    for (b=0; b<(height-100); b+=100) {
      triangle(a+100, 100, b+200, 0, 0, 0);
    }
  }
  for (a=0; a<(width-100); a+=100) {//a for loop for drawing the all 16 circles
    for (b=0; b<(height-100); b+=100) {
      triangle(a+100, 400, b+200, 500, 0, 500);
    }
    position.add(velocity);
    position2.add(velocity);
    position3.add(velocity);
    position4.add(velocity);
    if (position.x<=500) {
      rect(position.x, position.y, 30, 30);
    }
    if (position2.x<=500) {
      rect(width-position2.x, position2.y, 30, 30);
    }
    if (position3.x<=500) {
      rect(position3.x, position3.y, 30, 30);
    }
    if (position4.x<=500) {
      rect(width-position4.x, position4.y, 30, 30);
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