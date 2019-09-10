ENTITY mux_2x1_WbitsE IS
GENERIC (W : NATURAL := 16);
PORT (a, b : IN BIT_VECTOR (W-1 DOWNTO 0);-- data inputs
       sel : IN BIT;-- selector
         s : OUT BIT_VECTOR (W-1 DOWNTO 0); -- data output
END mux_2x1_WbitsE;

ARCHITECTURE structural OF mux_2x1_WbitsE IS
BEGIN
f0: FOR i IN (W-1) DOWNTO 0 GENERATE
  s(i) <= (a(i) AND NOT sel) OR (b(i) AND sel);
  END GENERATE f0;
END structural;
