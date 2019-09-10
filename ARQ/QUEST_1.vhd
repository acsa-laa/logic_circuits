ENTITY QUEST_1 IS
PORT (a,b,c,d : IN BIT;
		s : OUT BIT);
END QUEST_1;

ARCHITECTURE structural OF QUEST_1 IS BEGIN
	s <= (a AND b) OR (b AND c AND d);
END structural;