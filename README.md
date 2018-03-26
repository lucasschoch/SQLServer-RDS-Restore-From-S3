# SQLServer-RDS-Restore-From-S3
Script to restore the Database based on a .bak file of a S3 bucket

I made this few lines to help migrating 30 databases from a MSSQL Server that was local to a RDS. 

I'll put here how to back it up to S3 directly. If you cannot wait for it, take a look at TNT Drive, a software to install in your Server and make one S3 bucket be "recognized" as a drive in your File System so you can save in the "Z:/" drive the .bak file.
