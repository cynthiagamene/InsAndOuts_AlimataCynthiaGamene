const int LED1 = 13;
const int LED2 = 12;
const int LED3 = 11;
const int LED4 = 10;
const int buttonPin = 2;
int buttonState = 0;

void setup() {
  pinMode(buttonPin, INPUT);
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
}

void loop() {
  buttonState = digitalRead(buttonPin);
  delay(10);

  if (buttonState == HIGH) { // Button is pressed, animate the LEDs
    // Loop through LED pattern twice
    for (int i = 0; i < 2; i++) {
      digitalWrite(LED1, HIGH);
      delay(100);
      digitalWrite(LED1, LOW);
      digitalWrite(LED2, HIGH);
      delay(100);
      digitalWrite(LED2, LOW);
      digitalWrite(LED3, HIGH);
      delay(100);
      digitalWrite(LED3, LOW);
      digitalWrite(LED4, HIGH);
      delay(100);
      digitalWrite(LED4, LOW);
    }
  } else { // Button is not pressed, turn off LEDs
    digitalWrite(LED1, LOW);
    digitalWrite(LED2, LOW);
    digitalWrite(LED3, LOW);
    digitalWrite(LED4, LOW);
  }
}
