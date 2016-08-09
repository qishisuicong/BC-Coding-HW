PImage start;
PImage question1;
PImage answer1;
PImage answer2;
PImage question2;
PImage question3;
PImage question4;
PImage end;
int state;
void setup() {
  size(500, 500);
  //background(255);
  start = loadImage("start.jpg");
  question1 = loadImage("Q1.jpg");
  answer1 = loadImage("BA1.jpg");
  answer2 = loadImage("BA2.jpg");
  question2 = loadImage("Q2.jpg");
  question3 = loadImage("Q3.jpg");
  question4 = loadImage("Q4.jpg");
  end = loadImage("E.jpg");
  state = 0;
}

void draw() {
  if (state == 0) {
    image(start, 0, 0, 500, 500);
  }
  if (state == 1) {
    image(question1, 0, 0, 500, 500);
  }
  if (state == 2) {
    image(answer1, 0, 0, 500, 500);
  }
  if (state == 3) {
    image(answer2, 0, 0, 500, 500);
  }
  if (state == 4) {
    image(question2, 0, 0, 500, 500);
  }
  if (state == 5) {
    image(question3, 0, 0, 500, 500);
  }
  if (state == 6) {
    image(question4, 0, 0, 500, 500);
  }
  if (state == 7) {
    image(end, 0, 0, 500, 500);
  }
}
void keyPressed() {
  if (state == 1) {
    if (key=='a') {
      state = 2;
    }
    if (key=='c') {
      state = 3;
    }
    if (key=='b') {
      state = 4;
    }
  } else if (state == 4) {
    if (key=='a') {
      state = 5;
    }
    if (key=='b') {
      state =6;
    }
  } else if (state == 5) {
    if (key=='a') {
      state = 4;
    }
    if (key=='b') {
      state =7;
    }
  } else if (state == 6) {
    if (key=='b') {
      state = 7;
    }
    if (key=='a') {
      state = 4;
    }
  }
}


void mousePressed() {
  if (state == 0) {
    state = 1;
  }
  if (state == 2) {
    state = 0;
  }
  if (state == 3) {
    state = 0;
  }
  if (state == 7) {
    state = 0;
  }
}