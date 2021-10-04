Moons m1;

PVector speed;
float rotSpeed;

void setup(){
  size(500, 500);
  PVector p = new PVector(2,0);
  m1 = new Moons(0, 150, 25, p, .1);
}

void draw(){
  background(255);
  m1.display();
  m1.move();
}
