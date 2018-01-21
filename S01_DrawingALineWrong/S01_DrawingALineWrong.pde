int lineMode;

/* Line Modes:
 * 0 = Random Line forking from static line.
 * 1 = Jagged Line
 * 2 = Smoother Jagged Line
 */

void setup()
{
  size(500, 100);
  background(255);
  strokeWeight(5);
  smooth();
  stroke(0);
  
  lineMode = 3;
  
  if(lineMode == 0)
  {    
    line(20, 50, 480, 50); 
    
    float randX = random(width);
    float randY = random(height);
    stroke(20, 50, 70);
    line(20, 50, randX, randY);
  }
  
  else if(lineMode == 1)
  {
    int step = 10;
    float lastx = -999;
    float lasty = -999;
    float y = 50;
    int borderx = 20;
    int bordery = 10;
    int border = 20;
    for(int x = border; x <= width-border; x+=step)
    {
      y = bordery + random(height - 2*bordery);
      if(lastx > -999)
      {
        line(x, y, lastx, lasty);
      }
      lastx = x;
      lasty = y;
    }
  }
  // Draw a jagged line where each successive Y value varies only
  // between a range of 20 values.
  else if(lineMode == 2)
  {
    float xStep = 10;
    float yStep = 10;
    float lastX = 20;
    float lastY = 50;
    float y = 50;
    for(int x = 20; x <= 480; x+=xStep)
    {
      yStep = random(20) - 10; // range -10 to 10
      y += yStep;
      line(x, y, lastX, lastY);
        
      lastX = x;
      lastY = y;
    }
  }
  
  else if (lineMode == 3)
  {
    
}
  
  // Best Random notation to make down-the-line changes easier:
  // float randnum = random(1) * (max + min) - min;