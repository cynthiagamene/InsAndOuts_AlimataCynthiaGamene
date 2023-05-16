#include <FastLED.h>
#define LED_PIN 8
#define NUM_LEDS 144
CRGB leds[NUM_LEDS];

const int BUTTON_PIN_1 = 13;
const int BUTTON_PIN_2 = 12;
const int BUTTON_PIN_3 = 11;
const int BUTTON_PIN_4 = 10;
const int BUTTON_PIN_5 = 9;


void setup() {
  pinMode(BUTTON_PIN_1, INPUT);
  pinMode(BUTTON_PIN_2, INPUT);
  pinMode(BUTTON_PIN_3, INPUT);
  pinMode(BUTTON_PIN_4, INPUT);
  pinMode(BUTTON_PIN_5, INPUT);
  Serial.begin(9600);
  FastLED.addLeds<WS2812B, LED_PIN, GRB>(leds, NUM_LEDS);
}

void loop() {

  // Turn on all LEDs in red
  fill_solid(leds, NUM_LEDS, CRGB::Red);
  FastLED.show();
  delay(1000);

  // Turn on all LEDs in green
  fill_solid(leds, NUM_LEDS, CRGB::Green);
  FastLED.show();
  delay(1000);

  // Turn on all LEDs in blue
  fill_solid(leds, NUM_LEDS, CRGB::Blue);
  FastLED.show();
  delay(1000);

  // Check if button 1 is pressed
  if (digitalRead(BUTTON_PIN_1) == HIGH) {
    //Serial.println(1); // send '1' to Arduino   
    Serial.write(1);
  } else {
    //Serial.println(0);
    Serial.write(0);
  }
  // Check if button 2 is pressed
  if (digitalRead(BUTTON_PIN_2) == HIGH) {
    Serial.write(2);
  } else {
    Serial.write(3);
  }
  if (digitalRead(BUTTON_PIN_3) == HIGH) {
    Serial.write(3);
  } else {
    Serial.write(4);
  }

  if (digitalRead(BUTTON_PIN_4) == HIGH) {
    Serial.write(4);
  } else {
    Serial.write(5);
  }
  
  if (digitalRead(BUTTON_PIN_5) == HIGH) {
    Serial.write(5);
  } else {
    Serial.write(6);
  }
  delay(20);
}
