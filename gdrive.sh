cd ~/grive
grive sync
x="Dump`date +%Y%m%d`.sql"
tm=$(ls --full-time | egrep "`date +%Y-%m-%d`" | cut -d' ' -f 9)
if [ $x == $tm ];then
mysql -u root < $tm
else
echo not found
fi
