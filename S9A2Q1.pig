Student_Data	= LOAD 'class9/studentDS.txt' 
		USING PigStorage(',') 
		AS (Name:chararray, 
		ColUndertaken:chararray, 
		DOB:chararray, 
		Strm:chararray, 
		Grade:float, 
		State:chararray, 
		City:chararray) ; 
Student_Filtered = FILTER Student_Data By Grade < 5 ; 
Student_Grouped	= GROUP Student_Filtered ALL ; 
Student_Count 	= FOREACH Student_Grouped 
		GENERATE COUNT(Student_Filtered ) ;  
DUMP Student_Count ;  








