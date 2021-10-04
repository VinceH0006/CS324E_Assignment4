class Moons{
  float x, y, r, rotSpeed, angle;
  PVector speed;
  boolean right = true; // to handle edge case
  
  Moons(float x, float y, float r, PVector speed, float rotSpeed){
    this.x = x;
    this.y = y;
    this.r = r;
    this.speed = speed;
    this.rotSpeed = rotSpeed;
    this.angle = 0;
  }
  
  void display(){
    // Colors and constants for movement.
    color dark = color(180, 170, 171);
    color light = color(80, 80, 80);
    float craterLoc = .25 * r;
    float craterRatio = .5 * r;
    
    // Main moon shape
    fill(dark); // add color later
    ellipse(x, y, r, r);
    ellipse(width - x, y + 50, r, r);

    // Moon craters to visualize rotation
    fill(light);
    ellipse(x + craterLoc * cos(angle), y + craterLoc * sin(angle), 
        craterRatio, craterRatio);
    ellipse(craterLoc * cos(angle) + width - x, craterLoc * sin(angle) + y + 50, 
        craterRatio, craterRatio);
  }
  
  // Translates and "rotates" moons.
  void move(){
    angle += rotSpeed;
    right = goRight();
    if (right){
      x += speed.x;
    }
    else{
      x -= speed.x;
    }
  }
  
  // Determine if direction needs to be reversed.
  boolean goRight(){
    if (x >= width && right){
      return false;
    }
    else if(x == 0 && !right){
      return true;
    }
    else{
      return right;
    }
  }
}
