cd "C:\Program Files\MySQL\MySQL Server 8.0\bin"
mysqldump -u root -prootpass+ sakila > c:\backup\sakiladump
mysqldump -u root -prootpass+ --all-databases > c:\backup\alldatabasesdump.sql
mysqlcheck -u root -prootpass+ --check netflix
mysqlcheck -u root -prootpass+ --check simplon
mysqlcheck -u root -prootpass+ --check --all-databases
mysql -u root -h 127.0.0.1 -prootpass+ sakila_restore < c:\backup\sakilabackup.sql
exit