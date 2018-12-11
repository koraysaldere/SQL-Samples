
	UPDATE table_name

	SET  table_name.column_name = UPPER (column_name)
	
	FROM which_table

	-- Multiple Column and Cond.
	
	WHERE table_name.column_name = which_table.column_name 
  
  	AND table_name_1.column_name_1 = which_table_1.column_name_1 
  
  	AND table_name_2.column_name_2 = which_table_2.column_name_2 
  
  	-- If you want add more
