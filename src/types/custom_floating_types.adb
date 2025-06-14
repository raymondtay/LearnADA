with Ada.Text_IO; use Ada.Text_IO;

-- The Ada language does not specify the precision (number of decimal digits
-- in the mantissa) for Float; on a typical 32-bit machine the precision will be 6.
-- All common operations that could be expected for floating-point types are available,
-- including absolute value and exponentiation.
--
-- Ada allows the user to specify the precision for a floating-point type,
-- expressed in terms of decimal digits. Operations on these custom types
-- will then have at least the specified precision.
-- The syntax for a simple floating-point type declaration is:
--
-- type T is digits <number_of_decimal_digits>;
-- The compiler will choose a floating-point representation that supportsi
-- the required precision

procedure Floating_Point_Operations is
   A : Float := 2.5;
begin
   A := abs (A - 4.5);
   Put_Line ("The value of A is "
             & Float'Image (A));

   A := A ** 2 + 1.0;
   Put_Line ("The value of A is "
             & Float'Image (A));
end Floating_Point_Operations;


procedure Custom_Floating_Types is
   type T3  is digits 3;
   type T15 is digits 15;
   type T18 is digits 18;
begin
   Put_Line ("T3  requires "
             & Integer'Image (T3'Size)
             & " bits");
   Put_Line ("T15 requires "
             & Integer'Image (T15'Size)
             & " bits");
   Put_Line ("T18 requires "
             & Integer'Image (T18'Size)
             & " bits");
end Custom_Floating_Types;

procedure Display_Custom_Floating_Types is
   type T3  is digits 3;
   type T18 is digits 18;

   C1 : constant := 1.0e-4;

   A : constant T3  := 1.0 + C1;
   B : constant T18 := 1.0 + C1;
begin
   Put_Line ("The value of A is "
             & T3'Image (A));
   Put_Line ("The value of B is "
             & T18'Image (B));
end Display_Custom_Floating_Types;



