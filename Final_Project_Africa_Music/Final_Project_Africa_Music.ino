#include <FastLED.h>
#define LED_PIN 6
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
  // LED color sequences
  fill_solid(leds, NUM_LEDS, CRGB::Red);
  FastLED.show();
  delay(1000);

  fill_solid(leds, NUM_LEDS, CRGB::Green);
  FastLED.show();
  delay(1000);

  fill_solid(leds, NUM_LEDS, CRGB::Blue);
  FastLED.show();
  delay(1000);

  // Check if buttons are pressed and send corresponding data to Processing
  if (digitalRead(BUTTON_PIN_1) == HIGH) {
    Serial.write(1);
  }
  if (digitalRead(BUTTON_PIN_2) == HIGH) {
    Serial.write(2);
  }
  if (digitalRead(BUTTON_PIN_3) == HIGH) {
    Serial.write(3);
  }
  if (digitalRead(BUTTON_PIN_4) == HIGH) {
    Serial.write(4);
  }
  if (digitalRead(BUTTON_PIN_5) == HIGH) {
    Serial.write(5);
  }
  
  delay(20);
}
