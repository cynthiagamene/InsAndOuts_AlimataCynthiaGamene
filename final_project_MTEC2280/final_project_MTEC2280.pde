import processing.sound.*;

SoundFile file;
void setup() {
  size(1080, 720);
  background(46, 136, 242);
  file = new SoundFile(this, "09 Nakhane Toure - Be Moved (Acoustic).mp3");
}

void draw() {
  
  fill(0);
  rect(50, 100, 200, 200); // first square
  textSize(50);
  text("South Africa", 35, 90);
  file.play();
  
  fill(0);
  rect(250, 300, 200, 200); // second square
  text("Nigeria", 290, 290);

  fill(0);
  rect(450, 100, 200, 200); // third square
  text("Morocco", 450, 90);

  fill(0);
  rect(650, 300, 200, 200);
  text("Congo", 680, 290);

  fill(0);
  rect(850, 100, 200, 200);
  text("Kenya", 850, 90);

  fill(255);
  textSize(30);
  text("Welcome to Africa Map", 300, 650);
  
}


  
 
