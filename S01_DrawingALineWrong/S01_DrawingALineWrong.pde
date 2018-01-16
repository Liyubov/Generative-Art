int min;
int max;

void setup()
{
  // Best Random notation to make down-the-line changes easier:
  float randnum = random(1) * (max + min) - min;
}