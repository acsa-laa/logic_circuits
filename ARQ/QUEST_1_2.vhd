ENTITY QUEST_1_2 IS
PORT (a, b, c, d : IN BIT;
		s : OUT BIT);
END QUEST_1_2;

ARCHITECTURE behavior OF QUEST_1_2 IS
BEGIN
	PROCESS(a,b,c,d)
	BEGIN
		IF ((a = '1' AND b = '1') OR (b = '1' AND c = '1' AND d = '1'))) THEN
		s <= '1';
		ELSE
		s <= '0';
		END IF;
	END PROCESS;
END behavior;