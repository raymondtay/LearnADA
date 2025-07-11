with Ada.Text_IO; use Ada.Text_IO;
with Basics; use Basics; -- All names in Basics is available w/o FQN
with Increment;
with Increment_By;
with Show_Increment;
with Quadruple;
with In_Out_Params;
with Show_Renaming;
with Util.Log.Loggers;
with A_Procedure_With_Very_Long_Name_That_Cannot_Be_Changed;
with Operations;
with Operations.MathOps;
with Book.Additional_Operations;
use Book.Additional_Operations;
with Overflow_Checks;
use Overflow_Checks;
with Converting_Types; use Converting_Types;
with Subtypes_Are_Not_New_Types; use Subtypes_Are_Not_New_Types;


procedure Learn_Ada is
  use Operations; -- make all names in Operations package available.
  use Operations.MathOps;

  N : constant Integer := 4;
  procedure Show (S : String) renames
    A_Procedure_With_Very_Long_Name_That_Cannot_Be_Changed;
  MainLogger : constant Util.Log.Loggers.Logger := Util.Log.Loggers.Create("basicsm");
begin
  Say_Hello("World!!!!!!");
  Check_Positive;
  Check_Even_Odd;
  Check_Direction;
  Check_Direction;
  Greet_5a; Greet_5a_reverse; Greet_5a_noop;
  Nested_Procedure;
  Greet;

  MainLogger.Info("Startingn......");

  declare
    A : Integer := Increment(N);
    B : Integer := Increment_By(A, 4);
  begin
    Put_Line ("A is " & Integer'Image(A));
    Put_Line ("B is " & Integer'Image(B));
  end;

  Show_Increment;

  Put_Line("32 * 4 is " & Integer'Image(Quadruple(32)));

  -- in, in out, out parameters demonstration
  In_Out_Params;

  -- Subprogram Renaming
  Show("Hi, I'm Raymond and I'm trying to learn Ada.");

  -- Package visibility
  Put_Line(Get_Extended_Title);
  Put_Line(Get_Extended_Author);

  Overflow_Checks_Demo_OK;
  -- Overflow_Checks_Demo_NOK;

  -- Type conversion
  Conv2;

  -- See subtypes in action, runtime error expected
  GreetingDays;

end Learn_Ada;

