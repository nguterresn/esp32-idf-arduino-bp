#include <Arduino.h>

void setup()
{
  Serial.begin(115200);
  while (!Serial) {
    ; // wait for serial port to connect
  }

  // Do something.
}

void loop()
{
}