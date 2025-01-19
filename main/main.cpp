#include <Arduino.h>

#define LED_PIN GPIO_NUM_2

void setup()
{
  Serial.begin(115200);
  while (!Serial) {
    ; // wait for serial port to connect
  }

  pinMode(LED_PIN, OUTPUT);
}

void loop()
{
  digitalWrite(LED_PIN, HIGH);
  delay(1000);
  digitalWrite(LED_PIN, LOW);
  delay(1000);
}
