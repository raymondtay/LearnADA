function Quadruple (I : Integer)
                    return Integer is
    function Double(I : Integer) return Integer is
    begin
      return I*2;
    end Double;

    Result : Integer;
begin
  Result := Double(Double(I));
  return Result;
end Quadruple;

