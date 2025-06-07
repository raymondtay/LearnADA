--  greeting.ads
--  Specification for the package Greeting

package Basics is
   --  Say_Hello: prints a greeting message to standard output.
   --
   --  Parameters:
   --    Name : in String  -- the name to include in the greeting
   --
   procedure Say_Hello(Name : in String);
   procedure Check_Positive;
   procedure Check_Direction;
   procedure Greet_5a;
   procedure Greet_5a_reverse;
   procedure Greet_5a_noop;

   procedure Nested_Procedure;
   procedure Greet;
   procedure Check_Even_Odd;
end Basics;


