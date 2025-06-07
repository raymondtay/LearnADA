with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

-- Original examples are from https://learn.adacore.com/courses/intro-to-ada/chapters/imperative_language.html
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

   procedure Check_Positive is
     N : Integer;
   begin
     -- Put a String
     Put ("Enter a integer value: ");
     -- Read in an integer value
     Get (N);

     Put (N); -- Put an integer
     if N > 0 then
       Put_Line (" is a positive number.");
     else 
       Put_Line (" is not a positive number.");
     end if;
   end Check_Positive;

   procedure Check_Direction is
     N : Integer;
   begin
     Put ("Enter an integer value: ");
     Get (N);
     Put (N);
     if N = 0 or N = 360 then
       Put_Line (" is due north");
     elsif N in 1 .. 89 then
       Put_Line (" is the northeast quadrant.");
     elsif N = 90 then
       Put_Line (" is due east.");
     elsif N in 91 .. 179 then
       Put_Line (" is the southeast quadrant.");
     elsif N = 180 then
       Put_Line (" is due south.");
     elsif N in 181 .. 269 then
       Put_Line (" is the southwest quadrant.");
     elsif N = 270 then
       Put_Line (" is due west.");
     elsif N in 271 .. 359 then
       Put_Line (" is the norhtwest quadrant.");
     else
       Put_Line (" is not in the range 0 .. 360.");
     end if;
   end Check_Direction;

   procedure Greet_5a is
   begin
     for I in 1.. 5 loop -- discrete range, from 1 to 5 inclusive. I is local to the loop
       Put_Line ("Hello World!"
       & Integer'Image(I));
     end loop;
   end Greet_5a;

   procedure Greet_5a_reverse is
   begin
     for I in reverse 1.. 5 loop -- discrete range, from 1 to 5 inclusive. I is local to the loop
       Put_Line ("Hello World!"
       & Integer'Image(I));
     end loop;
   end Greet_5a_reverse;

   procedure Greet_5a_noop is
   begin
     for I in reverse 1 .. 5 loop -- NOOP when the upper limit of the loop is LT
       Put_Line ("Hello World!"
       & Integer'Image(I));
     end loop;
   end Greet_5a_noop;


   procedure Nested_Procedure is
     procedure Nested is
     begin
       Put_Line ("Hello World Everyone");
     end Nested;
   begin
     Nested;
   end Nested_Procedure;

   procedure Greet is
   begin
     loop
       Put_Line ("please enter your name: ");

       declare
         Name : constant String := Get_Line; 

       begin 
         exit when Name = ""; -- return when empty string
         Put_Line ("Hi " & Name & "!");
       end;
       -- Name is undefined here.
     end loop;
     Put_Line ("Bye!");
   end Greet;

   procedure Check_Even_Odd is
    N : Integer;
    -- Checks whether the number is range between 1 - 10
    function Is_Odd(X : in Integer) return Boolean is
    begin
      return (X mod 2 /= 0);
    end Is_Odd;

   begin
     Put ("[Check_Even_Odd] Enter an integer value: ");
     Get (N);
     Put (N);

     declare
       S : constant String :=
         (if Is_Odd(N)
          then " is a odd number"
          else " is a even number");
     begin
       Put_Line (S);
     end;
   end Check_Even_Odd;

end Basics;

-- procedure Greet is
-- begin
--   -- Print 'Hello World!' to the screen
--   Put_Line ("Hello, World!");
-- end Greet;

