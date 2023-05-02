///////////////////////////////////////////////////////
/*
DEMO: SENDING DATA FROM PROCESSING TO ARDUINO
Pair with Arduino demo sketch to control LED fade.

Note: Be sure to specify correct port number below!
 */
///////////////////////////////////////////////////////

import processing.serial.*;  //import Serial library

Serial myPort;  // create object from Serial class
float[] circleX = new float[80];
float[] circleY = new float[80];
float circleSize = 80;
int val = 0;

void setup() {
  //Generate 80 falling green balls and 80 falling balls
  strokeWeight(10);
  size(1000, 700);
  //noStroke();
  generateCircles();

  //set up Serial communication
  printArray(Serial.list()); // prints port list to the console
  String portName = Serial.list()[0]; //change to match your port
  myPort = new Serial(this, portName, 9600); //initialize Serial communication at 9600 baud
}

void draw() {
  background(255);
  moveCircles();
  displayCircles();

  //mouse location controls communication to Serial 
  val = int(map(mouseX, 0, width, 0, 255)); //remaps mouseX to 0-255
  myPort.write(val);
  println(val);

  //NOTE: IMPORTANT TO SEND VALUES 0-255 AS ARDUINO RECEIVES DATA IN BYTE-SIZE
}

void generateCircles() {
  for (int i = 0; i < circleX.length; i++) {
    circleX[i] = random(circleSize, width - circleSize);
    circleY[i] = random(circleSize, height - circleSize);
  }
}

void moveCircles() {
  for (int i = 0; i < circleX.length; i++) {
    float xDirection = random(1, 2);
    float yDirection = random(1, 2);
    circleX[i] += xDirection;
    circleY[i] += yDirection;
    checkBounds(i);
  }
}

void checkBounds(int index) {
  if (circleX[index] < circleSize/2.0 || circleX[index] > width - circleSize/2.0) {
    circleX[index] = constrain(circleX[index], circleSize/2.0, width - circleSize/2.0);
  }
  if (circleY[index] < circleSize/2.0 || circleY[index] > height - circleSize/2.0) {
    circleY[index] = constrain(circleY[index], circleSize/2.0, height - circleSize/2.0);
  }
}

void displayCircles() {
  for (int i = 0; i < circleX.length; i++) {
    if (i % 2 == 0) {
      fill(255, 0, 0);
    } else {
      fill(0, 255, 0);
    }
    ellipse(circleX[i], circleY[i], circleSize, circleSize);
  }
}

void mousePressed() {
  generateCircles();
}
