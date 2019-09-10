ENTITY QUEST_2_2 IS
PORT (a, b, c, d : IN BIT;
		s : OUT BIT);
END QUEST_1_2;

ARCHITECTURE behavior OF QUEST_2_2 IS
BEGIN
	PROCESS(a,b,c,d)
	BEGIN
		IF ((a = '1' AND b = '1' AND c = '1' AND d = '1') OR (a = '0' AND b = '0' AND c = '0' AND d = '0')OR (a = '0' AND b = '0' AND c = '0' AND d = '1')) THEN
		s <= '0';
		ELSE
		s <= '1';
		END IF;
	END PROCESS;
END behavior;