ENTITY QUEST_2 IS
PORT (a,b,c,d: IN BIT;
		s : OUT BIT);
END QUEST_2;

ARCHITECTURE structural OF QUEST_2 IS BEGIN
	s <= NOT((a AND b AND c AND d) OR ((NOT a) AND (NOT b) AND (NOT c) AND d) OR ((NOT a) AND (NOT b) AND (NOT c) AND (NOT d)));
END structural;