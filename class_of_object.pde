BALL[] balls;
Box[] boxs;
void setup() {
  size(1920, 1080);
  background(0);
  noStroke();
  fill(102);
  balls = new BALL[100];
  boxs = new Box[100];
  for (int i=0; i<balls.length; i++) { 
    
    balls[i] = new BALL(random(0.0, 1920.0), random(0.0, 1080.0), int(random(0, 100)));
    boxs[i] = new Box(random(0.0, 1920.0), random(0.0, 1080.0),int(random(0, 100)));
  }
}
void draw() {
  for (BALL ball : balls) {
     ball.draw();
  for (Box box : boxs) {
     box.draw();
  }
  }
}

class BALL {
  Float position_x, position_y;
  int size;
  // Contructor
  BALL(Float x, Float y, int s) {
    position_x = x;
    position_y = y;
    size = s;
  }

  void draw() {
    fill(200);
    ellipse(position_x, position_y, size, size);
  }
}


class Box {
  Float position_x, position_y;
  int size;
  // Contructor
  Box(Float x, Float y, int s) {
    position_x = x;
    position_y = y;
    size = s;
  }

  void draw() {
    fill(200);
    rect(position_x, position_y, size, size);
  }
}
