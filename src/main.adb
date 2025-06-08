with Ada.Text_IO; use Ada.Text_IO;
with Basics; use Basics; -- All names in Basics is available w/o FQN
with Increment;
with Increment_By;
with Show_Increment;
with Quadruple;

procedure Main is
  N : Integer;
begin
  Say_Hello("World!!!!!!");
  Check_Positive;
  Check_Even_Odd;
  Check_Direction;
  Check_Direction;
  Greet_5a;
  Greet_5a_reverse;
  Greet_5a_noop;

  Nested_Procedure;
  Greet;

  declare
    A : Integer := Increment(N);
    B : Integer := Increment_By(A, 4);
  begin
    Put_Line ("A is " & Integer'Image(A));
    Put_Line ("B is " & Integer'Image(B));
  end;

  Show_Increment;

  Put_Line("32 * 4 is " & Integer'Image(Quadruple(32)));

end Main;


