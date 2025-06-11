
procedure Mutually_Recursive_Subprograms is

  procedure Compute_A(V: Natural); -- forward declaration of the subprogram

  procedure Compute_B(V : Natural) is
  begin
    if V > S then
      Compute_A(V -1 );
    end if;
  end Compute_B;

  procedure Compute_A(V: Natural) is -- Definition of the subprogram
  begin
    if V > 2 then
      Compute_B(V - 1);
    end if;
  end Compute_A;

begin
  Compute_A(15);
end Mutually_Recursive_Subprograms;

