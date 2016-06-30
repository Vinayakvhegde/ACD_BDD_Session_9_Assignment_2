Student_Data	= LOAD 'class9/studentDS.txt' 
		USING PigStorage(',') 
		AS (Name:chararray, 
		ColUndertaken:chararray, 
		DOB:chararray, 
		Strm:chararray, 
		Grade:float, 
		State:chararray, 
		City:chararray) ; 
Student_Filtered = FILTER Student_Data 
		BY (State == 'oregon' AND Strm == 'BE') ; 
Student_Name= FOREACH Student_Filtered  GENERATE Name ; 
DUMP Student_Name ;  








