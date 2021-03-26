#!bin/bash

#1A Tampilkan Error jumlah dan info jumlah
allerrorinfo="$(grep -o 'y:.*' syslog.log | cut -f2- -d\ )"
#echo $allerror > alreror.csv

#1BTampilkan Error Beserta jumlahnya
perror=`printf "$allerrorinfo" | grep -o 'ERROR.*' | cut -f2- -d\ | cut -d"(" -f 1 | sort -V | uniq -c | sort -n -r`
pinfo=`printf "$allerrorinfo" | grep -o 'INFO.*' syslog.log | cut -f2- -d\ | cut -d"(" -f 1 | sort -V | uniq -c | sort -n -r`
#1C
#uniq -> select distinct
usertag=`cut -d"(" -f2 < syslog.log | cut -d")" -f1 | sort | uniq`
usererror=`printf "$allerrorinfo" | grep -o 'ERROR.*' | cut -f2- -d"(" | cut -d")" -f 1 | sort -V | uniq -c`
userinfo=`printf "$allerrorinfo" | grep -o 'INFO.*' syslog.log | cut -f2- -d"(" | cut -d")" -f 1 | sort -V | uniq -c`
#echo "$usererror" > usererror.csv
#echo "$userinfo" > infoerror.csv

#1D
#cara1D yang benar
teks="Error,Count";
echo "$perror" | while read cekerror
do
    	jumlaherror=`echo $cekerror | cut -d ' ' -f 1`
	namaerror=`echo $cekerror | cut -d ' ' -f 2-`
	echo "$namaerror,$jumlaherror" 
done | sed '1 i\'$teks > error_message.csv


#cara kedua
#Cara awal manual
#update="$(grep -o "The ticket was modified while updating" syslog.log | wc -l)"
#gagal="$(grep -o "Permission denied while closing ticket" syslog.log | wc -l)"
#tambah="$(grep -o "Tried to add information to closed ticket" syslog.log | wc -l)"
#time="$(grep -o "Timeout while retrieving information" syslog.log | wc -l)"
#tikethabis="$(grep -o "Ticket doesn't exist" syslog.log | wc -l)"
#gagaldb="$(grep -o "Connection to DB failed" syslog.log | wc -l)"
#printf "The ticket was modified while updating,%d\nPermission denied while closing ticket,%d\nTried to add information to closed ticket,%d\nTimeout while retrieving information,%d\nTicket doesn't exist,%d\nConnection to DB failed,%d\n" $update $gagal $tambah $time $tikethabis $gagaldb | sort -t ',' -k2 -n -r | sed '1 i\'$teks > error_message.csv

#1E
teks2="Username,INFO,ERROR"
printf "$usertag" | 
while read sum
    do
        jumlahinfo=$(grep -E "INFO.*($sum))" syslog.log | wc -l)
        jumlaherror=$(grep -E "ERROR.*($sum))" syslog.log | wc -l)
        echo "$sum,$jumlahinfo,$jumlaherror"
    done | sed '1 i\'$teks2 > user_statistic.csv;
