cd ~/grive
grive sync
#tm=`date +%Y%m%d`
#ls -l | egrep "`date +%d`" |cut -d' ' -f9
tm=$(ls --full-time | egrep "`date +%Y-%m-%d`" | cut -d' ' -f 9)
mysql -u root < $tm
