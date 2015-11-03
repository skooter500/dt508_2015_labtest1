void setup()
{
  size(500, 500);
  // Draw a car

}

float carLength = 80, carWidth = 30;
float carX = - carLength, carY;

float roadWidth = 100;
float carDir = 1.0f;
color c = color(random(0, 255), random(0, 255), random(0, 255));

void draw()
{
  background(0);
  float y = height * 0.5f;
  stroke(50, 50, 50);
  fill(50, 50, 50);
  rect(0, y - (roadWidth / 2), width, roadWidth);
  stroke(255);  
  for(float x = 0 ; x < width; x += 50)
  {
    line(x, y, x + 20, y);
  }
  
  stroke(c);
  fill(c);
  if (carDir == 1)
  {
      carY = y - (roadWidth / 4);
  }
  else
  {
      carY = y + (roadWidth / 4);    
  }
  
  carX += carDir;
  rect(carX, carY - (carWidth / 2), carLength, carWidth);  
  
  if (carX > width)
  {
    carDir = -1;
    carX = width;
    c = color(random(0, 255), random(0, 255), random(0, 255));
  }
  
  if (carX < - carLength)
  {
    carDir = 1;
    carX = - carLength;
    c = color(random(0, 255), random(0, 255), random(0, 255));
  }
  
}