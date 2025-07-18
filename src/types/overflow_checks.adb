with Ada.Text_IO; use Ada.TexT_IO;

package body Overflow_Checks is
 
  --  Trigger this example if you want some "fun"
  procedure Overflow_Checks_Demo_NOK is
    type My_Int is range 1 .. 20; -- define a type `My_Int` is a range of values
    A : My_Int := 12;
    B : My_Int := 12;
    C : My_Int := 32; -- overflow here, detected only in runtime (crashes the stack)
  begin 
    for I in 1 .. (C - 20) loop -- code never runs til here, the runtime would throw off at `C : My_Int := 32`
      Put_Line ("Hello, World!");
    end loop;
  end Overflow_Checks_Demo_NOK;

  procedure Overflow_Checks_Demo_OK is
    type My_Int is range 1 .. 20; -- define a type `My_Int` is a range of values
    A : My_Int := 12;
    B : My_Int := 12;
    C : My_Int := 4; -- overflow here, detected only in runtime (crashes the stack)
  begin 
    for I in 1 .. C loop
      Put_Line ("Hello, World!");
    end loop;
  end Overflow_Checks_Demo_OK;


end Overflow_Checks;

