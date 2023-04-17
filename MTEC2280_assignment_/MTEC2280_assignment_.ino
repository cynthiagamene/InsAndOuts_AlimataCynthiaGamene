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
  digitalWrite(LED1, HIGH);

  delay(1000);
  digitalWrite(LED1,LOW);

  delay(1000);
  digitalWrite(LED2, HIGH);

  delay(1000);
  digitalWrite(LED2,LOW);

  delay(1000);
  digitalWrite(LED3, HIGH);

  delay(1000);
  digitalWrite(LED3,LOW);

  delay(1000);
  digitalWrite(LED4, HIGH);

  delay(1000);
  digitalWrite(LED4,LOW);

  delay(1000);
  
 buttonState = digitalRead(buttonPin);  
 delay (10); 

   
  if (buttonState == 1) { 
     digitalWrite(LED1, 1);
     digitalWrite(LED2, 1);
     digitalWrite(LED3, 1);
     digitalWrite(LED4, 1);
   } else { 
     digitalWrite(LED1, 0);
     delay(1500);     
  }
}
  
