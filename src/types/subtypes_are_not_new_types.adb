-- Types may be used in Ada to enforce constraints on the valid range of values.
-- However, we sometimes want to enforce constraints on some values while
-- staying within a single type.
-- This is where subtypes come into play. A subtype does not introduce a new type.
--
-- While subtypes of a type are statically compatible with each other,
-- constraints are enforced at runtime: if you violat a subtype constraint, an
-- exception will be raised.
--
with Ada.Text_IO; use Ada.Text_IO;

package body Subtypes_Are_Not_New_Types is

  procedure GreetingDays is
    type Days is (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday);
  
    subtype Weekend_Days is Days range Saturday .. Sunday;
  
    Day : Days := Saturday;
    Weekend : Weekend_Days;
  
  begin
    Weekend := Day;
    --        ^ correct: same type, subtype
    --        constraints are respected
    Weekend := Monday;
    --         ^ wrong value for the subtype
    --         compiles but exception at runtime.
    end GreetingDays;

end Subtypes_Are_Not_New_Types;

