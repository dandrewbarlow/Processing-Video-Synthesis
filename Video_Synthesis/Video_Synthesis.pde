// My global vars, fight me

// keep track of time
int ticker = 0;

// am I recording?
boolean recording = false;

// width = 1920
//height = 1080


void keyPressed() {
  if (key == 'r' || key == 'R') {
    recording = !recording;
  }
}

// handle recording logic
void redLight() {
  if (recording) {
    // save the current frame
    saveFrame("../frames/frame_#####.png");
    // prep for a red coicle
    fill(255, 0, 0);
  }
  else {
    // prep for green coicle
    fill(0, 255, 0);
  }
  ellipse(30, 30, 30, 30);
}

// where'd u get ur circ dude?
void drawCircs(int t) {
  int size = t % 500;
  fill(0, 255, 0);
  circle(width / 2, height / 2, size);
}

void drawLines(int t) {
  stroke(0,0,0);
  fill(0,0,0);
  //multiplier
  int mult = 10;
  //keep our vals from getting unweildy
  int tPrime = t % 100;
  for (int i = -10*mult; i < width / (mult); i+= 5) {
    if (i % 2 == 0) {
      fill(0,0,255);
    }
    else {
      fill(255,0,0);
    }
    rect(i*mult+tPrime*mult, 0, i*mult+500+(tPrime*mult), height);
  }
}

void setup() {
  size(1920, 1080);
}

void draw() {
  background(255);
  ticker += 1;


  drawLines(ticker);
  drawCircs(ticker);
  redLight();
  
  
  
}
