--DROP DATABASE dbName

--RESTORE
EXEC msdb.dbo.rds_restore_database 
        @restore_db_name='dbName', 
        @s3_arn_to_restore_from='arn:aws:s3:::dbName-db-baks/dbName.bak';

--View progress
EXEC msdb.dbo.rds_task_status 

--BAKUP
exec msdb.dbo.rds_backup_database 
        @source_db_name='dbName', 
        @s3_arn_to_backup_to='arn:aws:s3:::dbName-db-baks/dbName.bak',
        @overwrite_S3_backup_file=1;