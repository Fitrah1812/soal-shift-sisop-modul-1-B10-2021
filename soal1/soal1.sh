#!bin/bash

#1A Tampilkan Error jumlah dan info jumlah
sinfo="$(grep -E -o "INFO" syslog.log)"
serror="$(grep -E -o "ERROR" syslog.log)"
jinfo="$(grep -o "INFO" syslog.log | wc -l)"
jerror="$(grep -o "ERROR" syslog.log | wc -l)"
#echo $jinfo >> data.csv;
#echo $jerror >> data.csv;

#1BTampilkan Error Beserta jumlahnya
perror=`grep -o 'ERROR.*' syslog.log | cut -f2- -d\ | cut -d"(" -f 1 | sort -V | uniq -c | sort -n -r`
pinfo=`grep -o 'INFO.*' syslog.log | cut -f2- -d\ | cut -d"(" -f 1 | sort -V | uniq -c | sort -n -r`
#1C
#uniq -> select distinct
usertag=`cut -d"(" -f2 < syslog.log | cut -d")" -f1 | sort | uniq`
#1D
#Cara awal manual
#update="$(grep -o "The ticket was modified while updating" syslog.log | wc -l)"
#gagal="$(grep -o "Permission denied while closing ticket" syslog.log | wc -l)"
#tambah="$(grep -o "Tried to add information to closed ticket" syslog.log | wc -l)"
#time="$(grep -o "Timeout while retrieving information" syslog.log | wc -l)"
#tikethabis="$(grep -o "Ticket doesn't exist" syslog.log | wc -l)"
#gagaldb="$(grep -o "Connection to DB failed" syslog.log | wc -l)"
#printf "The ticket was modified while updating,%d\nPermission denied while closing ticket,%d\nTried to add information to closed ticket,%d\nTimeout while retrieving information,%d\nTicket doesn't exist,%d\nConnection to DB failed,%d\n" $update $gagal $tambah $time $tikethabis $gagaldb | sort -t ',' -k2 -n -r | sed '1 i\'$teks > error_message.csv

#cara1D yang benar
teks="Error,Count";
echo "$perror" | while read cekerror
do
    jumlaherror=`echo $cekerror | cut -d ' ' -f 1`
	namaerror=`echo $cekerror | cut -d ' ' -f 2-`
	echo "$namaerror,$jumlaherror" 
done | sed '1 i\'$teks > error_message.csv


#cara kedua
#echo $update, $gagal, $tambah, $time, $tikethabis, $gagal > error_message.csv
#echo "Error,Count" >> error_message.csv
#echo "The ticket was modified while updating,$update" >> error_message.csv
#echo "Permission denied while closing ticket,$gagal" >> error_message.csv
#echo "Tried to add information to closed ticket,$tambah" >> error_message.csv
#echo "Timeout while retrieving information,$time" >> error_message.csv
#echo "Ticket doesn't exist,$tikethabis" >> error_message.csv
#echo "Connection to DB failed,$gagaldb" >> error_message.csv
#sort -k 2 -t , error_message.csv >> error_message.csv
#sort -t, -k2 -n error_message.csv >> error_message.csv

#1E
teks2="Username,INFO,ERROR"
printf "$usertag" | 
while read sum
    do
        jumlahinfo=$(grep -E "INFO.*($sum))" syslog.log | wc -l)
        jumlaherror=$(grep -E "ERROR.*($sum))" syslog.log | wc -l)
        echo "$sum,$jumlahinfo,$jumlaherror"
    done | sed '1 i\'$teks2 > user_statistic.csv;



