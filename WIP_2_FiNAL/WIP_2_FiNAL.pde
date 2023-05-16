import processing.serial.*; //imports Serial library from Processing
import processing.sound.*;
SoundFile fileSouthAfrica, fileNigeria, fileMorocco, fileCongo, fileTanzania;
SoundFile currentlyPlaying;

Serial myPort;

int val=0;

void setup() {
  size(1080, 720);
  background(46, 136, 242);
  
  //set up Serial communication
  fileSouthAfrica = new SoundFile(this, "AnyConv.com__master_kg-jerusalem_ft_nomcebo_official_video_mp3_18820.wav");
  fileNigeria = new SoundFile(this, "AnyConv.com__burna_boy_on_the_low_official_video_mp3_19432.wav");
  fileMorocco = new SoundFile(this, "AnyConv.com__oualid_ya_nari_ft._cravata_prod_janno_yam_mp3_2082.wav");
  fileCongo = new SoundFile(this, "AnyConv.com__fally_ipupa_un_coup_feat._dadju_clip_officiel_mp3_3903.wav");
  fileTanzania = new SoundFile(this, "AnyConv.com__diamond_platnumz_jeje_official_music_video_mp3_5034.wav");
  
  printArray(Serial.list()); // prints port list to the console
  String portName = Serial.list()[1]; //change to match your port
  myPort = new Serial(this, portName, 9600); //initialize Serial communication at 9600 baud
}

 void draw() {
  // Draw the first square and circle
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
    int data = myPort.read();
      if (data == 1) {
      currentlyPlaying = fileSouthAfrica;
      currentlyPlaying.play();
      //fileSouthAfrica.Play();
      println(1);
    } else if (data == 2) {
      currentlyPlaying = fileNigeria ;
      currentlyPlaying.play();
      println(2);
    } else if (data == 3) {
      currentlyPlaying = fileMorocco;
     currentlyPlaying.play();
      println(3);
   }else if (data == 4) {
      currentlyPlaying = fileCongo;
      currentlyPlaying.play();
      println(4);

  }else if (data == 5) {
      currentlyPlaying = fileTanzania ;
      currentlyPlaying.play();
      println(5);
  }
  }
 }
 
 
