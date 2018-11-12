
-- Search Table

SELECT  OBJECT_NAME([object_id]) AS tableName
FROM    sys.columns
WHERE   [name] = 'column';


Select * From INFORMATION_SCHEMA.columns Where Column_name Like '%Column%'


-- Search Table Valued Function / Store Proc.

SELECT 
    o.name AS ReferencingObject, 
    sd.referenced_entity_name AS ReferencedObject
FROM sys.sql_expression_dependencies  AS sd
INNER JOIN sys.objects AS o
    ON o.object_id = sd.referencing_id
WHERE sd.referenced_entity_name Like '%new3%';
