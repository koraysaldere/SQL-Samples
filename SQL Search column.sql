
SELECT  OBJECT_NAME([object_id]) AS tableName
FROM    sys.columns
WHERE   [name] = 'column';


Select * From INFORMATION_SCHEMA.columns Where Column_name Like '%Column%'
