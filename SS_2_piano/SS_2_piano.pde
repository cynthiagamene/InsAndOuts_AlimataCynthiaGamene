// PIano by Alimata C. Gamene

// Declare variables
float x = random(height);
float y = random(width);
float xMove = 200; // Declare and initialize xMove 
float yMove = 100;

void setup() {
  
size(1080, 720);
background(46,136,242);
}
void draw() {
  fill(0);
  rect(200,300,700,150);
  rect(mouseX, mouseY, 200,210);//background change to black
//first part of the piano
strokeWeight(4);
fill(0);
rect(200,200,700,150);
fill(255);
if (mousePressed) {
  fill(94, 198, 230);
}else {
  fill(255);
}
//first part of the piano
rect(450,200,200,70);//small screen 
circle(250, 240, 50);//small circle 1
circle(400, 240, 50);//2
circle(700, 240, 50);//3
circle(850, 240, 50);//4

fill(255);
rect(300,230,20,20);//small square 
rect(350,230,20,20);
rect(750,230,20,20);
rect(800,230,20,20);

//second part of the piano

rect(200,300,700,150);
//rect(200,400,800,250);

//line
//fill(204,153,0);
rect(200,300,30,150);//1
rect(263,300,30,150);
rect(328,300,30,150);//2
rect(390,300,30,150);//3
rect(450,300,30,150);
rect(513,300,30,150);
rect(575,300,30,150);
rect(640,300,30,150);
rect(700,300,30,150);
rect(760,300,30,150);
rect(820,300,30,150);
rect(850,300,30,150);

  
fill(0);  
rect(230,300,30,70);//1
rect(295,300,30,70);//2
rect(360,300,30,70);//3
rect(420,300,30,70);//4
rect(480,300,30,70);
    
  rect(545,300,30,70);
  rect(609,300,30,70);
  rect(670,300,30,70);
  rect(730,300,30,70);
  rect(790,300,30,70);
}
//A,S,D keys to control 
void keyPressed() {
  if (keyCode == 'A') {
    strokeWeight(10);
    fill(94,198,230);
    rect(545,300,30,70);
  } else if (keyCode == 'S') {
    strokeWeight(10);
    fill(171,194,174);
    rect(609,300,30,70);
  } else if (keyCode == 'D') {
    strokeWeight(10);
    fill(204,153,0);
    rect(730,300,30,70);
  }
  // ... and so on for all keys
}

void mousePressed() {
  fill(175);
  xMove = random(100, 50); // Assign a random value to xMove
  yMove = random(200, 50); // Assign a random value to yMove
  
}
