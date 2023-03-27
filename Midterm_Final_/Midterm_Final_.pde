// Farm concept by Alimata Gamene 
// This sktech is made to allow user to interact with the images.

PImage backgroundImg, cowImg, sheepImg, chickenImg;
Animal[] animals;
int numAnimals = 1;
int currentImgIndex = 0;
PImage[] backgroundImgs = new PImage[2];
int currentBgIndex = 0;



void setup() {
  size(1080, 800);
  smooth();
  background(255);
  
  // load the background and animal images
  
  backgroundImgs[0] = loadImage("https://static.vecteezy.com/system/resources/thumbnails/008/309/384/small/green-growing-grass-free-png.png");
  backgroundImgs[1] = loadImage("https://e7.pngegg.com/pngimages/943/785/png-clipart-farm-under-cloudy-sky-agriculture-farmer-organic-farming-agribusiness-farm-company-cloud-thumbnail.png");
 // welcomeImg = loadImage("https://images.vexels.com/media/users/3/246389/isolated/preview/727ea81b02d2356f5e2f542da2f40ec8-farm-welcome-badge.png");
  backgroundImg = loadImage("https://wallpapertag.com/wallpaper/full/0/5/7/537345-download-farm-background-pictures-1920x1080.jpg");
  cowImg = loadImage("https://pluspng.com/img-png/holstein-cow-png-hd-holstein-cow-803.png");
  sheepImg = loadImage("https://freepngdownload.com/image/thumb/sheep-png-free-download-7.png");
  chickenImg = loadImage("https://berthoudanimalhospital.com/wp-content/uploads/2021/03/Depositphotos_13927400_xl-2015.png");
  
  // create an array of animals
  animals = new Animal[numAnimals];
  for (int i = 0; i < numAnimals; i++) {
    float x = random(width);
    float y = random(height);
    int type = int(random(3));
    PImage img;
    if (type == 0) {
      img = chickenImg;
    } else if (type == 1) {
      img = cowImg;
    } else {
      img = sheepImg;
    }
    animals[i] = new Animal(x, y, img);
  }
}

void draw() {
    // draw the background image
    image(backgroundImg, 0, 0, width, height);
    image(backgroundImgs[currentBgIndex], 0, 0, width, height);


  // update and display each animal
  for (Animal animal : animals) {
    animal.update();
    animal.display();
  }
  
  // draw the text
  color c = color(20, 75, 200); 
  fill(c); 
  textSize(70);
  text("Welcome to Cynthia farm", 35,50);
  fill(0);
  textSize(40);
  text("Which animal you want to see first???",35,100);
  fill(204,153,0);
  textSize(40);
  text("Press A for chicken, B for cow, C for sheep, and R to restart", 35, 150);
  strokeWeight(20);
  fill(94,198,230);
  textSize(30);
  text("Click on the mouse to change background", 35, 190);
  
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
    this.speed = random(1, 2);
  }
  
  void update() {
    // move the animal horizontally
    x += speed;
    if (x > width + img.width/5) {
      x = -img.width/5;
    }
  }
  
  void display() {
    // draw the animal image
    image(img, x, y);
  }
}

//When key A,B,C is preesed is display A for chicken, B for Cow, and C for Sheep
void keyPressed() {
  if (key == 'r') {
    startOver();
  } else if (key == 'a') {
    currentImgIndex = 0;
  } else if (key == 'b') {
    currentImgIndex = 1;
  } else if (key == 'c') {
    currentImgIndex = 2;
  }
  
for (Animal animal : animals) {
  switch (currentImgIndex) { 
    case 0:
      animal.img = chickenImg;
      break;// borowed and modified this line of code from internet
    case 1://borowed this line of code from internet
      animal.img = cowImg;
      break;//borowed this line of code from internet
    case 2:
      animal.img = sheepImg;
      break;
    default://borowed this line of code from internet
      // do nothing
      break;
  }
}

}
void mousePressed() {
// Cycle to the next image
//currentImgIndex = (welcomeImg + );
currentImgIndex = (currentImgIndex + 1) % 3;
currentBgIndex = (currentBgIndex + 1) % 2;
// Update all animals with the new image
for (Animal animal : animals) {
switch (currentImgIndex) {
case 0:
animal.img = chickenImg;
break;
case 1:
animal.img = cowImg;
break;
case 2:
animal.img = sheepImg;
break;
default:
// do nothing
break;
}
}
}

void startOver() {
// reload the sketch
setup();
}
