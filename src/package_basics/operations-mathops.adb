package body Operations.MathOps is
  --  Declaration
  function Multiply_By
    (I    : Integer;
     Multiple : Integer := 0) return Integer is
  begin
    return I * Multiple;
  end Multiply_By;

end Operations.MathOps;



