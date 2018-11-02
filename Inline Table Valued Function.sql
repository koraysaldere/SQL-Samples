create function dbo.GetClients (
    @clientName nvarchar(max) = null
)
returns table
return 

Select * From
(
    select *
    from dbo.Clients as a
    where ((a.ClientName = @clientName) or a.ClientName is null)
)
as tablename

-- get Func

Select * dbo.GetClients

(
    '','','','',''

)

