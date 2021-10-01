class Clouds {
  float x;
  float y;
  float r;
  PVector speed;
  boolean xIsMovingLeft;
  boolean xIsMovingRight;
  color c;
  PShape cloud1;
  PShape cloud2;
  PShape cloud3;
  float main_ellipse_y;
  float ellipse1_y;
  float ellipse2_y;
  int counter;
  int dir;



  Clouds(float x, float y, float r, PVector speed, color c) {
    this.x = x;
    this.y = y;
    this.main_ellipse_y = y;
    this.ellipse2_y = y;
    this.ellipse1_y = y;
    this.r = r;
    this.speed = speed;
    this.c = c;
    this.counter = 0;
    this.dir = -1;
  }

  void display() {
    noStroke();
    fill(c);
    ellipse(x, ellipse1_y, r, r);
    ellipse(x + 50, y, r, r);
    ellipse(x + 100, ellipse2_y, r, r);
  }

  void moveAcrossPage() {
    if (x - r/2 > width) {
      xIsMovingLeft = true;
    }
    if (x + 100 + r/2 < 0) {
      xIsMovingLeft = false;
    }
    if (xIsMovingLeft) {
      x -= speed.x;
    } else {
      x += speed.x;
    }

    if (counter>=40) {
      counter = 0;
      if (dir == -1) {
        dir = 1;
      } else {
        dir = -1;
      }
    }
    
    float movePixel = .25;
    if (dir == -1) {//moved up
      counter++;
      ellipse1_y = ellipse1_y-movePixel;
      ellipse2_y = ellipse2_y-movePixel;
    } else {
      counter++;
      ellipse1_y = ellipse1_y+ movePixel;
      ellipse2_y = ellipse2_y+ movePixel;
    }
  }
}
