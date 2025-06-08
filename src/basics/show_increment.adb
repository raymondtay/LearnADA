with Ada.Text_IO; use Ada.Text_IO;
with Increment_By;

procedure Show_Increment is
  A, B, C : Integer;
  procedure Display_Result is
  begin
  Put_Line("Increment of "
          & Integer'Image(A)
          & " with "
          & Integer'Image(B)
          & " with "
          & Integer'Image(C));
  end Display_Result;

begin
  C := Increment_By; -- Parameterless call

  Put_Line("Using defaults for IncrementBy is"
            & Integer'Image(C));
  A := 10;
  B := 3;
  C := Increment_By(A, B);
  Display_Result;

  A := 20;
  B := 5;
  C := Increment_By(I => A, Incr => B); -- named parameter passing
  Display_Result;

end Show_Increment;

