//This is a small house by Alimata Cynthia

size(1080, 720);
background(255);

//The top
strokeWeight(4);
fill(0,0,255);
triangle(0,300,500,300,250,70);

//Body
fill(204,153,0);
rect(0,300,500,350);

//fill and door
fill(0);

// conditional statement to change the door color based on mouse position
if (mouseX < width/2) {
  fill(46,136,242);
} else {
  fill(255, 0, 0);
}
rect(200,620,100,30);

fill(46,136,242);
rect(100,390,100,90);
rect(300,390,100,90);

//  two for loops to create a pattern of circles in the background
for (int i = 0; i < width; i += 50) {
  for (int j = 0; j < height; j += 50) {
    noStroke();
    fill(random(255), random(255), random(255), 50);
    ellipse(i, j, 30, 30);
  }
}


if (dist(mouseX, mouseY, 250, 70) < 50) {
  fill(random(255), random(255), random(255));
} else {
  fill(0,0,255);
}
triangle(0,300,500,300,250,70);
