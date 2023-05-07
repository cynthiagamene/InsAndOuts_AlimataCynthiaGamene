
//This is my resubmission of the midterm. This project is a combinaison of two of my old assignments.
//Press run, you will see the piano, then use your mouse to turn the background to black and then press to any key to see the small house, use the U key to interact with the door!
//You can also press to the mouse to see both (small house and the piano).

boolean displayPiano = true;//set the apparition of the piano
boolean smallHouse  = true;//If display piano is shown the small house is not show
float xMove = 2; // Declare and initialize xMove 
float yMove = 2; // Declare and initialize y`Move 
// set the initial state of the door
boolean doorOpen = false;

void setup() {
  size(1080, 720);
  background(255);
}

void draw() {
  if (displayPiano) {
rect(mouseX, mouseY, 200,210);//background change to black
strokeWeight(4);
fill(0);
rect(200,200,700,150);
fill(255);
if (mousePressed) {
  fill(94, 198, 230);// blue color
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
  else { // Small house
    background(0);
  
    // set the position of the house
    int x = width/2 - 250;
    int y = height/2 - 350;

    // draw the house
    fill(204, 153, 0); // body
    rect(x, y+300, 500, 350);

    // draw the door
    fill(255);
    if (doorOpen) {
    rect(x+200, y+620, 100, 220);
  } else {
    rect(x+200, y+620, 100, 70);
  }
  
  
  // draw the windows
  fill(46, 136, 242);
  rect(x+100, y+390, 100, 90);
  rect(x+300, y+390, 100, 90);
  fill(0);
  ellipse(x+150, y+435, 40, 40); // add ellipse in the first window
  ellipse(x+350, y+435, 40, 40); // add ellipse in the second window

  // draw the roof
  strokeWeight(4);
  fill(0, 0, 255);
  triangle(x, y+300, x+500, y+300, x+250, y+70);
   }
  }

void keyPressed() {
  // toggle the state of the door when the "u" key is pressed
  if (key == 'u') {
   doorOpen = !doorOpen;
 }

 if (key == 'A') { // Piano is display when T and small house is display when Y is pressed
    displayPiano = true;
 } else if (key == 'b') {
    displayPiano = false;
  
  } else {
  displayPiano = false;
  smallHouse = false;
  }
}
void mousePressed() {
  // Change the color of the small square
  fill(204, 153, 0);
  
  // Assign a random value to xMove and yMove
  xMove = random(-2, 2); 
  yMove = random(-2, 2); 
  
  // Toggle the value of displayPiano when mouse is pressed
  displayPiano = !displayPiano;
}
