int i = 0;
int x = 800;

void setup()
{
  size(800, 800);
  background(255);
  rectMode(CENTER);
}

void draw()
{
  smooth();
  fill(192, 10);
  stroke(0, 5);
  //rect(200, 200, 40, 40);

  pushMatrix();
  translate(400, 400);
  rotate(radians(i));
  i++;
  //fill(random(255), random(255), random(255));
  fill(random(255), 1);
  if(x > 0)
  {
    rect(0, 0, x, x);
    x-=2;
  } else {
    x = 0;
  }
  
  popMatrix();
}