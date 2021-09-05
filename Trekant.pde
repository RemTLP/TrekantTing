///Har brugt proccesing til at lave sierpinski trekanten.
///Tænkte bare det vil være sjovt.

float x1, y1;
float x2, y2;
float x3, y3;
float x, y;

void setup() {
  size(800,800);
  x1 = random(width);
  y1 = random(height);
  x2 = random(width);
  y2 = random(height);  
  x3 = random(width);
  y3 = random(height);
  
  background(0);
  stroke(255);
  strokeWeight(8);
  point(x1, y1);
  point(x2, y2);
  point(x3, y3);
}

void draw() {
  {
    point(x, y);
    int r = floor(random(3));
    strokeWeight(3);

    if (r == 0) {
      x = ((x + x1) * 0.5);
      y = ((y +  y2) * 0.5);
    
    } else if (r == 1) {
      x = ((x + x2) * 0.5);
      y = ((y +  y2) * 0.5);
      
    } else if (r == 2) {
      x = ((x + x3) * 0.5);
      y = ((y +  y3) * 0.5);
      
    }
  }
}