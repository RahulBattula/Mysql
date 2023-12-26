# Mysql

ERROR: Loading local data is disabled - this must be enabled on both the client and server sides

1. mysql> SET GLOBAL local_infile=1;
2. mysql> quit;
3. mysql --local-infile=1 -u root -p1
4. You can load from your CSV file now.

