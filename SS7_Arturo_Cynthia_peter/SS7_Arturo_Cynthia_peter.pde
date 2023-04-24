/*
Reads values from serial port, written to the port by Arduino.
 The size of an ellipse changes according to the serial values.
 Must assign the correct port, see instructions below!
 */
//Original code Peter
//Modified by Cynthia,Peter,Arturo
import processing.serial.*; //imports Serial library from Processing

Serial myPort; // creates object from Serial class
int val=0; // creates variable for data coming from serial port
void draw() {
  if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }
   color black = #080808;
color purple = #3203AA;
  //draws an ellipse that grows and shrinks in relation to val
  background(black);
  fill (0);
  //println (val); //prints to Processing console
  color r = color(255,0,0);
fill(r);
rect(500, 290, 200, 200);
circle(550, 530, 100);
circle(450, 530, 100);
circle(500, 400, 250);
color c = color(20, 75, 200);
fill(c);
ellipse(490, 400, 110,val);
color g = color(0, 75, 0);
fill(g);
triangle(360, 300, 500, 200, 630, 300);
if (val <= 20){
  fill(r);
triangle(360, 300, 500, 200, 630, 300);
} else if (val >= 120){
  fill(purple);
triangle(360, 300, 500, 200, 630, 300);
}



}
