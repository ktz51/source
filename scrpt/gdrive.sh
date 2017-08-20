cd ~/grive
grive sync
tm=`date +%Y%m%d`
mysql < Dump$tm.sql
