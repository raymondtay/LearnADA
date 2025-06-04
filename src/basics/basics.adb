with Ada.Text_IO;
use Ada.Text_IO;

-- Building this program on my macOS would give:
-- gnatmake src/greet.adb
-- gcc -c -Isrc/ -I- src/greet.adb
-- gnatbind -x greet.ali
-- gnatlink greet.ali
-- -macosx_version_min has been renamed to -macos_version_min
-- ld: warning: ignoring duplicate libraries: '-lSystem'

package body Basics is

   procedure Say_Hello(Name : in String) is
   begin
      Put_Line("Hello, " & Name & "!");
   end Say_Hello;

end Basics;

-- procedure Greet is
-- begin
--   -- Print 'Hello World!' to the screen
--   Put_Line ("Hello, World!");
-- end Greet;

