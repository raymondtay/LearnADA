with Ada.Text_IO; use Ada.Text_IO;

package body Converting_Types is

  procedure Conv is
     type Meters is new Float;
     type Miles is new Float;
     Dist_Imperial : Miles;
     Dist_Metric : constant Meters := 1000.0;
  begin
     Dist_Imperial :=
       Miles (Dist_Metric) * 621.371e-6;
     --  ^^^^^^^^^^^^^^^^^
     --    Type conversion, from Meters to Miles
     --    Now the code is correct
  
     Put_Line (Miles'Image (Dist_Imperial));
  end Conv;
  
  -- The idiomatic way to make type conversionas explicit.
  procedure Conv2 is
     type Meters is new Float;
     type Miles  is new Float;
  
     --  Function declaration, like procedure
     --  but returns a value.
     function To_Miles (M : Meters) return Miles is
     --                             ^ Return type
     begin
        return Miles (M) * 621.371e-6;
     end To_Miles;
  
     Dist_Imperial : Miles;
     Dist_Metric   : constant Meters := 1000.0;
  begin
     Dist_Imperial := To_Miles (Dist_Metric);
     Put_Line (Miles'Image (Dist_Imperial));
  end Conv2;

package Converting_Types;

