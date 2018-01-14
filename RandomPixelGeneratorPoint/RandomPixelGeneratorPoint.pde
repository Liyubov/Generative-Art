int x = 0;
int y = 0;

void setup(){
  size(1440, 900);
  background(255);
  frameRate(60);
  
}

void draw(){
  
  stroke(random(255), random(255), random(255));
  point(x, y);
  x++;
  
  if(x == width)
  {
    x = 0;
    y++;
  }
}