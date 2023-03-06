PImage mountain;
PImage tree2;
//PImage lake;

color skyColor;
float waterLevel;
boolean isRainy;

void setup() {
  size(1080, 750);

  mountain = loadImage("https://www.pngall.com/wp-content/uploads/2016/06/Mountain-PNG-Picture.png");
  tree2 = loadImage("https://i.pinimg.com/originals/c6/2e/e4/c62ee4559ca391a822f0a19a039763aa.png");
  //lake = loadImage ("https://e7.pngegg.com/pngimages/66/361/png-clipart-lake-beautiful-lake-water.png");
  skyColor = color(135, 206, 235);
  //waterLevel = height * 0.5;
  isRainy = false;
}

void draw() {
  // Draw the sky
  background(skyColor);
  
  // Draw the mountain
  image(mountain, 0, height - mountain.height);
  
  // Draw the lake
  //image(lake, 3, waterLevel);
  
  // Draw the trees
  image(tree2, 250, height - mountain.height - tree2.height);
  
  // Draw the text
  textSize(32);
  textAlign(CENTER);
  fill(255);
  if (isRainy) {
    text("Click to make it sunny", width/2, 50);
  } else {
    text("Click to make it rainy", width/2, 50);
  }
}

void mousePressed() {
  // Change the weather conditions
  isRainy = !isRainy;
  if (isRainy) {
    skyColor = color(255, 204, 0);
    waterLevel = height * 0.7;
  } else {
    skyColor = color(100, 149, 237);
    waterLevel = height * 0.5;
  }
}
