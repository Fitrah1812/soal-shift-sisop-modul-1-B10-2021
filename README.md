# soal-shift-sisop-modul-1-B10-2021
Penjelasan Soal
1. Nomor 1
Ryujin baru saja diterima sebagai IT support di perusahaan Bukapedia. Dia diberikan tugas untuk membuat laporan harian untuk aplikasi internal perusahaan, ticky. Terdapat 2 laporan yang harus dia buat, yaitu laporan daftar peringkat pesan error terbanyak yang dibuat oleh ticky dan laporan penggunaan user pada aplikasi ticky. Dari soal ini kita diminta untuk menyelesaikan permasalahan yang didapatkan oleh Ryujin.
A. Mengumpulkan informasi dari log aplikasi yang terdapat pada file syslog.log. Informasi yang diperlukan antara lain: jenis log (ERROR/INFO), pesan log, dan username pada setiap baris lognya. Karena Ryujin merasa kesulitan jika harus memeriksa satu per satu baris secara manual, dia menggunakan regex untuk mempermudah pekerjaannya. Bantulah Ryujin membuat regex tersebut.
Jawaban : 

``` Bash
#1A Tampilkan Error jumlah dan info jumlah
allerrorinfo="$(grep -o 'y:.*' syslog.log | cut -f2- -d\ )"
#echo $allerror > alreror.csv
```

Penyelesaian :
Inisiasi awal untuk menyelesaikan persoalan diatas adalah kita melihat terlebih dahulu isi dari syslog.log dalam permasalahan ini kita diminta untuk mengumpulkan informasi berupa (ERROR/INFO). Adapun format yang saya buat disini adalah <log_type> <log_message> (<username>) sesuai yang diminta dari soal. Setelah itu cara saya adalah saya melihat bahwasannya setelah pada line <app_name> "ticky:" disini saya ambil setelah y: untuk mendapatkan format yang saya inginkan sampai line terakhir sehingga <time> <hotsname> <app_name> tidak masuk didalam variabel yang bernama allerrorinfo. Variabel allerrorinfo berisikan semua hal yang saya butuhkan untuk menunjang kebutuhan soal selanjutnya. Sehingga hasilnya dari allerroinfo adalah sebagai berikut :
	
``` Csv
 INFO Created ticket [#4217] (mdouglas)

 INFO Closed ticket [#1754] (noel)

 ERROR The ticket was modified while updating (breee)

 ERROR Permission denied while closing ticket (ac)

 INFO Commented on ticket [#4709] (blossom)

 INFO Commented on ticket [#6518] (rr.robinson)

 ERROR Tried to add information to closed ticket (mcintosh)

 ERROR Tried to add information to closed ticket (jackowens)

 ERROR Tried to add information to closed ticket (mdouglas)

 ERROR Timeout while retrieving information (oren)

 ERROR Ticket doesn't exist (xlg)

 ERROR Timeout while retrieving information (ahmed.miller)

 ERROR Ticket doesn't exist (blossom)

 ERROR The ticket was modified while updating (bpacheco)

 ERROR Ticket doesn't exist (enim.non)

 ERROR Permission denied while closing ticket (rr.robinson)

 ERROR Tried to add information to closed ticket (oren)

 ERROR Timeout while retrieving information (mcintosh)

 ERROR Timeout while retrieving information (ahmed.miller)

 ERROR Connection to DB failed (jackowens)

 ERROR Permission denied while closing ticket (flavia)

 ERROR Tried to add information to closed ticket (oren)

 ERROR Tried to add information to closed ticket (sri)

 INFO Commented on ticket [#1097] (breee)

 ERROR Connection to DB failed (nonummy)

 INFO Created ticket [#7115] (noel)

 ERROR The ticket was modified while updating (flavia)

 INFO Commented on ticket [#2253] (nonummy)

 ERROR Connection to DB failed (oren)

 ERROR Timeout while retrieving information (xlg)

 INFO Created ticket [#7298] (ahmed.miller)

 ERROR Timeout while retrieving information (flavia)

 ERROR Connection to DB failed (jackowens)

 INFO Commented on ticket [#7255] (oren)

 ERROR Ticket doesn't exist (flavia)

 ERROR Tried to add information to closed ticket (jackowens)

 INFO Closed ticket [#1712] (britanni)

 INFO Created ticket [#2860] (mcintosh)

 ERROR Timeout while retrieving information (montanap)

 ERROR Permission denied while closing ticket (britanni)

 ERROR Permission denied while closing ticket (montanap)

 ERROR Tried to add information to closed ticket (noel)

 ERROR Timeout while retrieving information (oren)

 INFO Commented on ticket [#8385] (mdouglas)

 INFO Closed ticket [#2452] (jackowens)

 ERROR Connection to DB failed (ac)

 ERROR Timeout while retrieving information (blossom)

 ERROR Permission denied while closing ticket (montanap)

 ERROR Tried to add information to closed ticket (breee)

 ERROR Connection to DB failed (sri)

 ERROR Timeout while retrieving information (montanap)

 ERROR Permission denied while closing ticket (ahmed.miller)

 ERROR Connection to DB failed (mai.hendrix)

 INFO Commented on ticket [#4562] (ac)

 ERROR Tried to add information to closed ticket (ahmed.miller)

 INFO Created ticket [#7897] (kirknixon)

 ERROR Permission denied while closing ticket (mai.hendrix)

 ERROR Connection to DB failed (kirknixon)

 ERROR Ticket doesn't exist (flavia)

 INFO Created ticket [#5784] (sri)

 ERROR Permission denied while closing ticket (blossom)

 ERROR Tried to add information to closed ticket (nonummy)

 INFO Closed ticket [#8685] (rr.robinson)

 ERROR The ticket was modified while updating (breee)

 INFO Commented on ticket [#4225] (noel)

 ERROR The ticket was modified while updating (enim.non)

 ERROR Timeout while retrieving information (xlg)

 INFO Closed ticket [#7948] (noel)

 INFO Commented on ticket [#8628] (noel)

 ERROR Tried to add information to closed ticket (noel)

 ERROR Ticket doesn't exist (blossom)

 ERROR Permission denied while closing ticket (enim.non)

 INFO Closed ticket [#7333] (enim.non)

 INFO Commented on ticket [#1653] (noel)

 ERROR The ticket was modified while updating (mdouglas)

 INFO Created ticket [#5455] (ac)

 ERROR Timeout while retrieving information (oren)

 INFO Commented on ticket [#3813] (mcintosh)

 ERROR Connection to DB failed (bpacheco)

 ERROR The ticket was modified while updating (mcintosh)

 ERROR Connection to DB failed (oren)

 INFO Closed ticket [#8604] (mcintosh)

 ERROR The ticket was modified while updating (noel)

 ERROR Ticket doesn't exist (nonummy)

 ERROR Timeout while retrieving information (blossom)

 ERROR Timeout while retrieving information (mai.hendrix)

 INFO Created ticket [#6361] (enim.non)

 ERROR Timeout while retrieving information (xlg)

 INFO Commented on ticket [#7159] (ahmed.miller)

 ERROR Connection to DB failed (breee)

 INFO Created ticket [#7737] (nonummy)

 ERROR Connection to DB failed (mdouglas)

 INFO Closed ticket [#4372] (oren)

 INFO Commented on ticket [#2389] (sri)

 ERROR Connection to DB failed (breee)

 INFO Closed ticket [#3297] (kirknixon)

 ERROR The ticket was modified while updating (blossom)

 INFO Created ticket [#2461] (jackowens)

 INFO Closed ticket [#9876] (blossom)

 INFO Created ticket [#5896] (mcintosh)


```


B. Kemudian, Ryujin harus menampilkan semua pesan error yang muncul beserta jumlah kemunculannya.
Jawaban :
``` Bash
#1BTampilkan Error Beserta jumlahnya
perror=`printf "$allerrorinfo" | grep -o 'ERROR.*' | cut -f2- -d\ | cut -d"(" -f 1 | sort -V | uniq -c | sort -n -r`
pinfo=`printf "$allerrorinfo" | grep -o 'INFO.*' syslog.log | cut -f2- -d\ | cut -d"(" -f 1 | sort -V | uniq -c | sort -n -r`
```

Penyelesaian : 
Setelah kita mendapatkan hasil dari permasalahan A kita bisa melanjutkan permasalahan kedua yaitu menampilkan semua pesan error yang muncul beserta jumlahnya disini saya buat error dan info supaya saya bisa checking lagi untuk nomor selanjutnya. Disini saya akan menjelaskan ide yang saya buat yaitu mengambil semua pesan error diletakkan di perror dan semua pesan info diletakkan di pinfo. Ide saya adalah saya cek apalagi line itu mengandung (ERROR/INFO) dan diklusterisasi ke variabel yang sudah dibuat. Ide disini untuk hanya mengambil pesan saja yaitu ambil line setelah (ERROR/INFO) sampai program ketemu dengan "(" dengan menggunakan cut -d"(" maksudnya adalah memotong sampai ketemu delimeter "(". Setelah itu disini saya lakukan sorting value, mengambil nilai uniq -c dan setelah itu saya sort secara Descending. Hasilnya adalah sebagai berikut



C. Ryujin juga harus dapat menampilkan jumlah kemunculan log ERROR dan INFO untuk setiap user-nya.
Jawaban :
``` Bash
#1C
#uniq -> select distinct
usertag=`cut -d"(" -f2 < syslog.log | cut -d")" -f1 | sort | uniq`
usererror=`printf "$allerrorinfo" | grep -o 'ERROR.*' | cut -f2- -d"(" | cut -d")" -f 1 | sort -V | uniq -c`
userinfo=`printf "$allerrorinfo" | grep -o 'INFO.*' syslog.log | cut -f2- -d"(" | cut -d")" -f 1 | sort -V | uniq -c`
#echo "$usererror" > usererror.csv
#echo "$userinfo" > infoerror.csv
```



D. Semua informasi yang didapatkan pada poin b dituliskan ke dalam file error_message.csv dengan header Error,Count yang kemudian diikuti oleh daftar pesan error dan jumlah kemunculannya diurutkan berdasarkan jumlah kemunculan pesan error dari yang terbanyak.
Jawaban :
``` Bash
#1D
#cara1D yang benar
teks="Error,Count";
echo "$perror" | while read cekerror
do
    	jumlaherror=`echo $cekerror | cut -d ' ' -f 1`
	    namaerror=`echo $cekerror | cut -d ' ' -f 2-`
	    echo "$namaerror,$jumlaherror" 
done | sed '1 i\'$teks > error_message.csv
```

E. Semua informasi yang didapatkan pada poin c dituliskan ke dalam file user_statistic.csv dengan header Username,INFO,ERROR diurutkan berdasarkan username secara ascending.
Jawaban :
``` Bash
#1E
teks2="Username,INFO,ERROR"
printf "$usertag" | 
while read sum
    do
        jumlahinfo=$(grep -E "INFO.*($sum))" syslog.log | wc -l)
        jumlaherror=$(grep -E "ERROR.*($sum))" syslog.log | wc -l)
        echo "$sum,$jumlahinfo,$jumlaherror"
    done | sed '1 i\'$teks2 > user_statistic.csv;
```


3. Nomor 2
4. Nomor 3
