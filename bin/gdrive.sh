cd ~/grive
grive sync
tm=`date +%Y%m%d`
mysql < Dump$tm.sql
cp -f Dump* /projects/source/sql/
