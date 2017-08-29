cd ~/grive
grive sync
#x="Dump`date +%Y%m%d`.dsql
#tm=$(ls --full-time | egrep "`date +%Y-%m-%d` | cut -d'  -f 9)
tm=$(ls | egrep "`date +%Y%m%d`")
#if [ $x == $tm ] ;then
mysql -u root < $tm
cp -f $tm /projects/source/sql 
#else
#echo not found
#fi
