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
		BY State == 'alabama' AND ColUndertaken == 'goverenment' ; 
Student_Grouped	= GROUP Student_Filtered ALL ; 
College_Count 	= FOREACH Student_Grouped GENERATE COUNT(Student_Filtered ) ;  
DUMP College_Count ;  








