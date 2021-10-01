Clouds cld;
Clouds cld2;
Clouds cld3;
Clouds cld4;
Clouds cld5;

void setup(){
  size(500,500); 
  PVector s = new PVector(.5, .5); 
  PVector s2 = new PVector(1,1);
  PVector s3 = new PVector(.75, .75); 
  PVector s4 = new PVector(.85, .85);
  cld = new Clouds(50, 50, 75, s, color(184,194,203)); 
  cld2 = new Clouds(150, 150, 100, s2, color(136,170,173));
  cld3 = new Clouds(400, 100, 80, s3, color(108,151,155));
  cld4 = new Clouds(500, 50, 90, s2, color(173,187,188));
  cld5 = new Clouds(200, 120, 120, s4, color(173,194,203));
}

void draw(){
  background(0);
  cld.display();
  cld5.display();
  cld3.display();
  cld4.display();
  cld2.display();
  cld.moveAcrossPage();
  cld2.moveAcrossPage();
  cld3.moveAcrossPage();
  cld4.moveAcrossPage();
  cld5.moveAcrossPage();

  
}
