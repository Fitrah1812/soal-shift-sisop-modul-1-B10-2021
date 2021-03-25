#!bin/bash

#1A
sinfo="$(grep -E -o "INFO" syslog.log)"
serror="$(grep -E -o "ERROR" syslog.log)"

jinfo="$(grep -o "INFO" syslog.log | wc -l)"
jerror="$(grep -o "ERROR" syslog.log | wc -l)"
#echo $jinfo >> data.csv;
#echo $jerror >> data.csv;

#1B
semuaerror =`cut -d $7 -f2 < syslog.log`
echo $semuaerror;


#1C
#uniq -> select distinct
usertag=`cut -d"(" -f2 < syslog.log | cut -d")" -f1 | sort | uniq`
echo $usertag > data.csv
#1D
update="$(grep -o "The ticket was modified while updating" syslog.log | wc -l)"
gagal="$(grep -o "Permission denied while closing ticket" syslog.log | wc -l)"
tambah="$(grep -o "Tried to add information to closed ticket" syslog.log | wc -l)"
time="$(grep -o "Timeout while retrieving information" syslog.log | wc -l)"
tikethabis="$(grep -o "Ticket doesn't exist" syslog.log | wc -l)"
gagaldb="$(grep -o "Connection to DB failed" syslog.log | wc -l)"

teks="Error_Count";
printf "The ticket was modified while updating,%d\nPermission denied while closing ticket,%d\nTried to add information to closed ticket,%d\nTimeout while retrieving information,%d\nTicket doesn't exist,%d\nConnection to DB failed,%d\n" $update $gagal $tambah $time $tikethabis $gagaldb | sort -t ',' -k2 -n -r | sed '1 i\'$teks > error_message.csv

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

printf "$usertag" | 
while read sum
    do
        jumlahinfo=$(grep -E "INFO.*($sum))" syslog.log | wc -l)
        jumlaherror=$(grep -E "ERROR.*($sum))" syslog.log | wc -l)
        echo "$sum,$jumlahinfo,$jumlaherror"
    done | sed '1 i\Username,INFO,ERROR' > user_statistic.csv
