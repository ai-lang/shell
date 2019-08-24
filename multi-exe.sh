res="OK"

for ((i=0;i<5;i++));do
{

wget -c  ${url[$i]} -O aidlux-ABUIABA6GAAg8a-$i.tar.gz;
touch $i.md5
echo ${md5[$i]}>$i.md5
mdtx=`md5sum -c $i.md5`

if [[ $mdtx != *$res* ]];then
echo "vertified integrity failed! re-download"
#rm aidlux-ABUIABA6GAAg8a-$i.tar.gz
#wget -c  ${url[$i]} -O aidlux-ABUIABA6GAAg8a-$i.tar.gz;
else
echo "vertified integrity sucess!"
fi


} &
done
wait
