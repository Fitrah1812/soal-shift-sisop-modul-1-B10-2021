# soal-shift-sisop-modul-1-B10-2021
Kelompok B10 
Nama Kelompok :
1. Fitrah Arie Ramadhan 05111940000025
2. Yusrill Zubaydi 05111940000160
3. Lathifa Itqonina M 05111940000176


## Penjelasan Soal   
**No. 1**  
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

``` Csv
15 Timeout while retrieving information 13 Connection to DB failed 12 Tried to add information to closed ticket 10 Permission denied while closing ticket 9 The ticket was modified while updating 7 Ticket doesn't exist
```

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
Penyelesaian :
Penyelesaian yang saya buat disini untuk memunculkan jumlah kemunculan log ERROR dan INFO untuk setiap usernya sehingga saya membutuhkan dua variabel untuk mengakomodasi hal tersebut adapun idenya sama yaitu mengambil teks setelah ERROR dengan syarat baru yaitu abis kalimat yang terdapat delimeter "(" sampai ketemu didelimeter ")" untuk mengambil usernya setelah itu saya sort by value dan jangan lupa meletakkan uniq agar tidak ada duplikasi -c adalah count berapa kali muncul hasilnya adalah sebagai berikut"
1. usererror
``` csv
      2 ac
      4 ahmed.miller
      6 blossom
      2 bpacheco
      5 breee
      1 britanni
      3 enim.non
      5 flavia
      4 jackowens
      1 kirknixon
      3 mai.hendrix
      3 mcintosh
      3 mdouglas
      4 montanap
      3 noel
      3 nonummy
      7 oren
      1 rr.robinson
      2 sri
      4 xlg
```
2. userinfo
``` csv
      2 ac
      2 ahmed.miller
      2 blossom
      1 breee
      1 britanni
      2 enim.non
      2 jackowens
      2 kirknixon
      4 mcintosh
      2 mdouglas
      6 noel
      2 nonummy
      2 oren
      2 rr.robinson
      2 sri
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

Penyelesaian : 
Setelah saya mendapatkan perror diatas saya meminta untuk dibaca dengan menggunakan variabel cekerror dan pastinya menggunakan looping. Untuk disini secara mudahnya adalah mengambil field 1 yaitu berupa angka serta mengambil field 2 dan selanjutnya untuk menentukan pesan error yang akan ditampilkan hal ini sudah didapatkan dari B hanya saja kita harus menggunakan format contoh yang sudah tertera. Dan tidak lupa pula saya menggunakan sed untuk menyisipkan sebuah kata di indeks pertama. Hasilnya adalah sebagai berikut :
```csv
Error,Count
Timeout while retrieving information,15
Connection to DB failed,13
Tried to add information to closed ticket,12
Permission denied while closing ticket,10
The ticket was modified while updating,9
Ticket doesn't exist,7
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
Penyelesaian :
Disini diminta untuk mengeluarkan dengan format Username,INFO,ERROR berdasarkan username yang akan dibuat sort by asc defaultnya sort adalah ascending. Oleh karena itu saya menggunakan usertag yang sudah saya buat di 1 C. Apa saja isi usertag ? Isinya adalah sebagai berikut :
``` csv
ac
ahmed.miller
blossom
bpacheco
breee
britanni
enim.non
flavia
jackowens
kirknixon
mai.hendrix
mcintosh
mdouglas
montanap
noel
nonummy
oren
rr.robinson
sri
xlg
```
Berikut hasilnya yang sudah di sort secara ascending. Setelah itu saya memasukkan ke variabel sum dengan menggunakan looping mengambil jumlahinfo,jumlaherror dengan cara menggunakan wc -l untuk count jumlah error user, dan jumlah info user dan hal itu sudah dibuat dipoint C dan hanya memanggil saja. serta keluarkan format yang diinginkan hasilnya adalah sebagai berikut user_statistic.csv :

``` csv
Username,INFO,ERROR
ac,2,2
ahmed.miller,2,4
blossom,2,6
bpacheco,0,2
breee,1,5
britanni,1,1
enim.non,2,3
flavia,0,5
jackowens,2,4
kirknixon,2,1
mai.hendrix,0,3
mcintosh,4,3
mdouglas,2,3
montanap,0,4
noel,6,3
nonummy,2,3
oren,2,7
rr.robinson,2,1
sri,2,2
```

**No. 2**  
Steven dan Manis mendirikan sebuah startup bernama “TokoShiSop”. Sedangkan kamu dan Clemong adalah karyawan pertama dari TokoShiSop. Setelah tiga tahun bekerja, Clemong diangkat menjadi manajer penjualan TokoShiSop, sedangkan kamu menjadi kepala gudang yang mengatur keluar masuknya barang. Tiap tahunnya, TokoShiSop mengadakan Rapat Kerja yang membahas bagaimana hasil penjualan dan strategi kedepannya yang akan diterapkan. Kamu sudah sangat menyiapkan sangat matang untuk raker tahun ini. Tetapi tiba-tiba, Steven, Manis, dan Clemong meminta kamu untuk mencari beberapa kesimpulan dari data penjualan “Laporan-TokoShiSop.tsv”. Dari soal ini kita diminta untuk menyelesaikan permaslahan yang didapatkan oleh Steven, Manis, & Clemong.  

A. Steven ingin mengapresiasi kinerja karyawannya selama ini dengan mengetahui **Row ID** dan **profit percentage** terbesar (jika hasil profit percentage terbesar lebih dari 1, maka ambil Row ID yang paling besar). Karena kamu bingung, Clemong memberikan definisi dari profit percentage, yaitu:     

**𝑃𝑟𝑜𝑓𝑖𝑡 𝑃𝑒𝑟𝑐𝑒𝑛𝑡𝑎𝑔𝑒 = (𝑃𝑟𝑜𝑓𝑖𝑡 ÷ 𝐶𝑜𝑠𝑡 𝑃𝑟𝑖𝑐𝑒) × 100**  

Cost Price didapatkan dari pengurangan Sales dengan Profit. (Quantity diabaikan).
  
Jawaban:
``` Bash
#2A
	 {if (find <= ($21/($18-$21))*100) 
		{
		find=($21/($18-$21))*100
       		n=$1
		}
	 } 
```  
Penyelesaian:  
Disini diminta untuk menempilkan data yang berisi Row ID dan profit percentage terbesar dari data transaksi yang telah diberikan dan apabila profit percentage memiliki nilai yang sama maka yang ditampilkan hanya profit percentage dengan Row ID terbesar saja. Maka untuk memperoleh data tersebut dilakukan operasi perhitungan (profit percentage) sesuai dengan rumus yang telah diberikan dan untuk mencari profit percentage terbesar dengan menggunakan statement if yang memanfaatkan operator '<='. Dimana hasil dari data yang ditampilkan akan disimpan ke dalam file  *hasil.txt* . Hasil yang telah didapatkan yaitu:  
``` txt
Transaksi terakhir dengan profit percentage terbesar yaitu 9952 dengan presentase 100.00%.
```  
  
B. Clemong memiliki rencana promosi di Albuquerque menggunakan metode MLM. Oleh karena itu, Clemong membutuhkan daftar nama customer pada transaksi tahun 2017 di Albuquerque.  
``` Bash
#2B
	 {if ($3 ~/17/ && $10 == "Albuquerque" && counter>=0)
	  	{nama[counter]=$7;counter++}
	 }
```    
Penyelesaian:  
Data yang ingin ditampilkan adalah daftar nama customer yang **bertransaksi pada tahun 2017** dan pada **kota Alburqueque**. Maka yang dapat kita lakukan adalah mencari nama customer tersebut yang memenuhi kriteria dengan cara membandingkan nama kota (kata) yang sama yakni Alburqueque dan tahun 2017. Dalam pengimplementasiannya terdapat dalam pengerjaan ini kami menggunakan operator equal (==) dan (~). Apabila telah memenuhi syarat maka nama customer akan disimpan kedalam array. Dimana hasil dari data yang ditampilkan akan disimpan ke dalam file  *hasil.txt* . Hasil yang telah didapatkan yaitu:    
``` txt
Daftar nama customer di Albuquerque pada tahun 2017 antara lain:
Susan Vittorini
David Wiener
Benjamin Farhat
Michelle Lonsdale
```  
C. TokoShiSop berfokus tiga segment customer, antara lain: Home Office, Customer, dan Corporate. Clemong ingin meningkatkan penjualan pada segmen customer yang paling sedikit. Oleh karena itu, Clemong membutuhkan **segment customer** dan **jumlah transaksinya yang paling sedikit**.  
``` Bash
#2C 
	 {
	 	if($8 == "Home Office") {flag1++}
		else if($8 == "Consumer") {flag2++}
		else if($8 == "Corporate"){flag3++}
		
	 }
```  
Penyelesaian:  

```txt
Tipe segmen customer yang penjualannya paling sedikit adalah Home Office dengan 1783 transaksi.
```
4. Nomor 3
