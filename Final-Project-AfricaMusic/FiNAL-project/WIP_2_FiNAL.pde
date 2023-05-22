import processing.serial.*;
import processing.sound.*;

SoundFile fileSouthAfrica, fileNigeria, fileMorocco, fileCongo, fileTanzania;
SoundFile currentlyPlaying;

Serial myPort;

int val = 0;
int data;

void setup() {
  size(1080, 720);
  background(46, 136, 242);

  // Set up Serial communication
  fileSouthAfrica = new SoundFile(this, "SouthAfrica.wav");
  fileNigeria = new SoundFile(this, "Nigeria.wav");
  fileMorocco = new SoundFile(this, "Morocco.wav");
  fileCongo = new SoundFile(this, "Congo.wav");
  fileTanzania = new SoundFile(this, "Tanzania.wav");

  printArray(Serial.list());
  String portName = Serial.list()[1];
  myPort = new Serial(this, portName, 9600);
}

void draw() {
  // Draw the map
    fill(0);
  rect(50, 100, 200, 200);
  textSize(50);
  text("South Africa", 35, 90);
  fill(255);
  ellipse(150, 200, 50, 50);

  fill(0);
  rect(250, 300, 200, 200); // second square
  text("Nigeria", 290, 290);
  fill(255);
  ellipse(350, 400, 50, 50); // circle in second square

  fill(0);
  rect(450, 100, 200, 200); // third square
  text("Morocco", 450, 90);
  fill(255);
  ellipse(550, 200, 50, 50);

  fill(0);
  rect(650, 300, 200, 200);
  text("Congo", 680, 290);
  fill(255);
  ellipse(750, 400, 50, 50); // circle in fourth square

  fill(0);
  rect(850, 100, 200, 200);
  text("Tanzania", 850, 90);
  fill(255);
  ellipse(950, 200, 50, 50); // circle in fifth square

  fill(255);
  textSize(30);
  text("Welcome to Africa Map", 300, 650);


  // Read the incoming data from Serial
  if (myPort.available() > 0) {
    data = myPort.read();
    if (data == 1) {
      stopCurrentlyPlaying();
      currentlyPlaying = fileSouthAfrica;
      currentlyPlaying.play();
      println(1);
    } else if (data == 2) {
      stopCurrentlyPlaying();
      currentlyPlaying = fileNigeria;
      currentlyPlaying.play();
      println(2);
    } else if (data == 3) {
      stopCurrentlyPlaying();
      currentlyPlaying = fileMorocco;
      currentlyPlaying.play();
      println(3);
    } else if (data == 4) {
      stopCurrentlyPlaying();
      currentlyPlaying = fileCongo;
      currentlyPlaying.play();
      println(4);
    } else if (data == 5) {
      stopCurrentlyPlaying();
      currentlyPlaying = fileTanzania;
      currentlyPlaying.play();
      println(5);
    }
  }
}
// Check if there is the object currently playing (stored in the currentlyPlaying variable), and if so, it stops the playback by invoking the stop() method on that object.
void stopCurrentlyPlaying() {
  if (currentlyPlaying != null && currentlyPlaying.isPlaying()) {
    currentlyPlaying.stop();
  }
}
