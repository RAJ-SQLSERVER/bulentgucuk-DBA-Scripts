EXEC sp_help VisitorPageHits

ALTER TABLE dbo.VisitorPageHits REBUILD PARTITION = ALL
WITH 
(DATA_COMPRESSION = PAGE,
SORT_IN_TEMPDB = ON
)
GO
DBCC UPDATEUSAGE(0)

ALTER INDEX IX_VisitorPageHits_PageURL
ON dbo.VisitorPageHits
REBUILD 
WITH ( SORT_IN_TEMPDB = ON, DATA_COMPRESSION = PAGE )
GO

DBCC UPDATEUSAGE(0)


select OBJECT_NAME(object_id),* from sys.indexes
where	OBJECT_NAME(object_id) = 'VisitorPageHits'