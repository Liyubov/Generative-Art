int i = 0;
int x = 1440;

void setup()
{
  size(3840, 2160);
  background(255);
  rectMode(CENTER);
}

void draw()
{
  smooth();
  fill(192, 10);
  //stroke(0, 5);
  noStroke();
  //rect(200, 200, 40, 40);

  pushMatrix();
  translate(1920, 1080);
  rotate(radians(i));
  i+=8;
  //fill(random(255), random(255), random(255));
  fill(random(0, 255), random(0, 255), random(0, 255));
  if(x > 0)
  {
    rect(0, 0, x, x);
    x-=5;
  } else {
    x = 0;
  }
  
  popMatrix();
}