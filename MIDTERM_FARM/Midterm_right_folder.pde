//New code for my Midterm project 
// Farm concept by Alimata Gamene 
PImage backgroundImg, cowImg, sheepImg, chickenImg;
Animal[] animals;
int numAnimals = 1;

void setup() {
  //fullScreen();
  size(1080, 800);
 //size(backgroundImg.width, backgroundImg.height);
  smooth();
  background(255);
  
  // load the background and animal images
  //size(backgroundImg.width, backgroundImg.height);
  backgroundImg = loadImage("https://wallpapertag.com/wallpaper/full/0/5/7/537345-download-farm-background-pictures-1920x1080.jpg");
  cowImg = loadImage("https://pluspng.com/img-png/holstein-cow-png-hd-holstein-cow-803.png");
  sheepImg = loadImage("https://freepngdownload.com/image/thumb/sheep-png-free-download-7.png");
  chickenImg = loadImage("https://berthoudanimalhospital.com/wp-content/uploads/2021/03/Depositphotos_13927400_xl-2015.png");
  
  // create an array of animals
  animals = new Animal[numAnimals];
  for (int i = 0; i < numAnimals; i++) {
    float x = random(width);
    float y = random(height);
    int type = int(random(1));
    PImage img;
    if (type == 0) {
      img = cowImg;
    } else if (type == 1) {
      img = sheepImg;
    } else {
      img = chickenImg;
    }
    animals[i] = new Animal(x, y, img);
  }
}

void draw() {
  // draw the background image
 image (backgroundImg, 0,3);

  
  
// update and display each animal
  for (Animal animal : animals) {
    animal.update();
    animal.display();
  }
  
  // check if the user wants to start over
  if (keyPressed && key == 'r') {
    startOver();
  }
}

class Animal {
  float x, y, speed;
  PImage img;
  
  Animal(float x, float y, PImage img) {
    this.x = x;
    this.y = y;
    this.img = img;
    this.speed = random(1, 1);
  }
  
  void update() {
    // move the animal horizontally
    x += speed;
    if (x > width + img.width/2) {
      x = -img.width/2;
    }
  }
  
  void display() {
    // draw the animal image
    image(img, x, y);
  }
}
//When key A,B,C is preesed is display A for chicken,B for Cowing and C for Sheeping
void keyPressed() {
  if (key == 'r') {
    startOver();
  } else if (key == 'a') {
    for (Animal animal : animals) {
      animal.img = chickenImg;
    }
  } else if (key == 'b') {
    for (Animal animal : animals) {
      animal.img = cowImg;
    }
  } else if (key == 'c') {
    for (Animal animal : animals) {
      animal.img = sheepImg;
    }
  }
}
void startOver() {
  // reload the sketch
  setup();
} 
