//Funny house, user can interact with the drawing using the mouse by Alimata Cynthia Gamene
void setup() {
  size(1080, 700);
  noStroke();
}

void draw() {
  background(220);
  strokeWeight(4);
  fill(0);
  triangle(0,300,500,300,250,70);
  
  // Draw a triangle in the center
  fill(255, 0, 0);
  triangle(540, 300, 990, 300, 765, 70);

  
  for (int i = 0; i < width; i += 50) {
    for (int j = 1; j < height; j += 50) {
      fill(255, 0, 0);
      rect(i + 1, j + 300, 150, 30);
    }
  }
  
  // conditional statement to change color when mouse is over a circle
  if (dist(mouseX, mouseY, 200, 200) < 30) {
    fill(0, 0, 255);
  } else {
    fill(255);
  }
  
  // draw a circle in the center
  ellipse(250, 200, 80, 80);
  ellipse(490, 200, 80, 80);
  ellipse(770, 200, 80, 80);
  
  //  pattern of rectangles
  for (int i = 0; i < 10; i++) {
    fill(0);
    rect(200 + i * 10, 300 + i * 10, 20, 20);
    rect(500 + i * 10, 300 + i * 10, 20, 20);
    rect(800 + i * 10, 300 + i * 10, 20, 20);  
  }
}
