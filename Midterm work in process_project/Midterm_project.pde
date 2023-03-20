//Farm project by Alimata Gamene 
//This is a farm project with farming envirronment 

// Declare variables for images and environment
PImage cowImg;
PImage pigImg;
PImage sheepImg; 
PImage barnImg; 
PImage grassImg;
PImage currentImage;

int environment = 0;

void setup() {
  size(1000, 800);
  // Load images
  currentImage.copy(barnImg, 0, 0, barnImg.width, barnImg.height, 0, 0, width/2, height/2);

  cowImg = loadImage("https://i.pinimg.com/originals/e4/0b/e4/e40be46624e81aed61597bea622df110.png");
  pigImg = loadImage("https://www.transparentpng.com/thumb/pig/eMpMO1-protect-the-lives-your-livestock-with-country-financial.png");
  sheepImg = loadImage("https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTExL2EwMTMtamFja2Fuc3RleS1kc2M1NDE3LWpvYjEzODEucG5n.png");
  barnImg = loadImage("https://www.pngall.com/wp-content/uploads/5/Farm-House-Barn-PNG-Images.png");
  grassImg = loadImage("https://e7.pngegg.com/pngimages/151/298/png-clipart-graphy-of-green-grass-artificial-turf-green-meadow-grasses-field-background-grass-lawn.png");
}

void draw() {
  // Draw environment
  
    background(255);
    if (environment == 0) {
    image(currentImage, 0, 0, width, height);

    image(grassImg, 0, 0, width, height);
  } else {
    background(255);
    image(barnImg, 0, 0, width, height);
  }
  // Draw animals
  image(cowImg, 100, 100, 100, 100);
  image(pigImg, 250, 100, 100, 100);
  image(sheepImg, 400, 100, 100, 100);
}

void mousePressed() {
  if (currentImage == barnImg) 
   currentImage = createImage(width, height, ARGB);
}

// } else {
   // currentImage = barnImg;
  //}

//void playSound(String fileName) {
 // Play sound file();
  // Note: Sound files must be added to data folder
  //       before they can be played
  //SoundFile sound = new SoundFile(fileName);
  //sound.play();
//}
