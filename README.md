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
Kendala yang dihadapi : Pembuatan command dan harus membuat inisiasi sendiri untuk mencari INFO dan ERROR beserta format yang telah diberikan, sehingga membuat saya agak memakan waktu untuk menyelesaikan ini karena ini merupakan kerangka yang akan digunakan dibawahnya.

![Image1](https://github.com/Fitrah1812/soal-shift-sisop-modul-1-B10-2021/blob/main/Dokumentasi/1ASoalShiftHasil1.jpeg)

![Image2](https://github.com/Fitrah1812/soal-shift-sisop-modul-1-B10-2021/blob/main/Dokumentasi/1ASoalShiftHasil2.jpeg)

![Image3](https://github.com/Fitrah1812/soal-shift-sisop-modul-1-B10-2021/blob/main/Dokumentasi/1ASoalShiftHasil3.jpeg)

![Image4](https://github.com/Fitrah1812/soal-shift-sisop-modul-1-B10-2021/blob/main/Dokumentasi/1ASoalShiftHasil4.jpeg)

![image5](https://github.com/Fitrah1812/soal-shift-sisop-modul-1-B10-2021/blob/main/Dokumentasi/1ASoalShiftHasil5.jpeg)


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
Kendala yang dihadapi : Awalnya saya agak bingung untuk sort by valuenya bagaimana setelah baca dokumentasi saya mengerti command-command yang dibutuhkan agar lebih cepat dan efisiensi waktu pada saat pengerjaan.

![Imagesoal2](https://github.com/Fitrah1812/soal-shift-sisop-modul-1-B10-2021/blob/main/Dokumentasi/1BSoalShiftHasil.jpeg) 

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
Kendala yang dihadapi : Pada saat pencarian jumlah error ini juga sama dengan persoalan B tetapi hanya mengubah kondisi dimana hanya user yang kita hitung. Kendala saya adalah pada saat pencarian user saya harus menginisiasi lagi dan mengumpulkan nama-nama user untuk nanti dieksekusi secara uniq -c untuk menghitung jumlahnya.

![Image1C](https://github.com/Fitrah1812/soal-shift-sisop-modul-1-B10-2021/blob/main/Dokumentasi/1CSoalShiftHasilERROR.jpeg)

![Image1C1](https://github.com/Fitrah1812/soal-shift-sisop-modul-1-B10-2021/blob/main/Dokumentasi/1CSoalShiftHasilINFO.jpeg)


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

Kendala yang dihadapi : Kendala yang saya hadapi adalah saya bingung untuk menempatkan dan mencari nilai errornya ternyata setelah baca di dokumentasi regex terdapat cut yang bisa diambil mengikuti fieldnya sehingga mempermudah saat pengerjaan.

![image1D](https://github.com/Fitrah1812/soal-shift-sisop-modul-1-B10-2021/blob/main/Dokumentasi/1DSoalShifHasil.jpeg)

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

Kendala yang dihadapi : Sebenarnya nomer 1 E ini sama saja seperti 1 D tetapi dia menghitung ERROR dan INFO setiap username. Kendala saya adalah saya awalnya tidak memiliki user apa saja yang ada di syslog.log, setelah itu saya buat usertag untuk membantu persoalan ini alhasil saya bisa mengerjakannya.

![image1E](https://github.com/Fitrah1812/soal-shift-sisop-modul-1-B10-2021/blob/main/Dokumentasi/1ESoalShifHasil.jpeg)

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
  
B. Clemong memiliki rencana promosi di Albuquerque menggunakan metode MLM. Oleh karena itu, Clemong membutuhkan daftar **nama customer pada transaksi tahun 2017 di Albuquerque**.  
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
	 {if (flag1<flag2 && flag1<flag3){flag=flag1;segmen="Home Office"}
	 else if (flag2<flag1 && flag2<flag3){flag=flag2;segmen="Consumer"}
	 else if (flag3<flag1 && flag3<flag2){flag=flag3;segmen="Corporate"}
	 }
	
```    
Penyelesaian:    
Data yang ingin ditampilkan adalah segmen customer dan jumlah transaksi paling sedikit dari semua segmen yang ada. Dalam penyelesainnya kami menggunakan statement if dan else untuk menemukan kodisi yang sesuai dengan syarat yang telah ditentukan. Dimana per-segmen akan dilakukan counter atau penambahan pada setiap iterasinya pada sebuah variable apabila segmen consumer yang dibandingkan dengan string yang telah ditentukan sama. Setelah diketahui jumlah transaksi persegmen-nya maka dilakukan perbandingan yang di implementasikan menggunakan statemen if else pula untuk mendapatkan jumlah segment yang melakukan transaksi paling sedikit.
  
``` txt
Tipe segmen customer yang penjualannya paling sedikit adalah Home Office dengan 1783 transaksi.
```  
  
D. TokoShiSop membagi wilayah bagian (region) penjualan menjadi empat bagian, antara lain: Central, East, South, dan West. Manis ingin **mencari wilayah bagian (region) yang memiliki total keuntungan (profit) paling sedikit** dan **total keuntungan wilayah tersebut**.  
``` Bash
#2D
	 {
	 	if($13 == "South") {profit1+=$21}
		else if($13 == "West") {profit2+=$21}
		else if($13 == "Central"){profit3+=$21}
		else if($13 == "East"){profit4+=$21}
		
	 }
	 {if (profit1<profit2 && profit1<flag3 && profit1<profit4){total=profit1;region="South"}
	 else if (profit2<profit1 && profit2<profit3 && profit2<profit4){total=profit2;region="West"}
	 else if (profit3<profit1 && profit3<profit2 && profit3<profit4){total=profit3;region="Central"}
	 else if (profit4<profit1 && profit4<profit2 && profit4<profit3){total=profit4;region="East"}
	 }
```  
  
Penyelesaian:   
Data yang ingin ditampilkan pada poin ini adalah wilayah yang memiliki total keuntungan yang paling sedikit. Maka untuk mendapatkannya sama sepert,i poin sebelumnya yakni 2C terlebih dahulu dengan menggunakan if else dilakukan perbandingan antara data (nama wilayah/region) dengan string yang telah ditentukan. Kemudian apabila memenuhi statement tersebut maka dilakukan penambahan keuntungan(profit) pada sebuah variable per-region untuk disimpan hingga data yang diiterasikan habis. Setalah itu dilakukan perbandingan untuk mendapatkan profit dari region mana yang paling sedikit. 
``` txt
Wilayah bagian (region) yang memiliki total keuntungan (profit) yang paling sedikit adalah Central dengan total keuntungan 39706.362500
```    
E. kamu diharapkan bisa membuat sebuah script yang akan menghasilkan file “hasil.txt” yang memiliki format yang telah ditentukan!  
``` Bash
#2E
	    printf "Transaksi terakhir dengan profit percentage terbesar yaitu %d dengan presentase %.2f%%.\n\n\n" ,n,find
	    printf "Daftar nama customer di Albuquerque pada tahun 2017 antara lain:\n"
	    while(counter--)
	    {
		if (nama[counter]!=nama[counter+1]){
	    		printf "%s\n",nama[counter]
		}
		else{
		    	continue
		}
	    }
	    printf "\n"
	    printf "Tipe segmen customer yang penjualannya paling sedikit adalah %s dengan %d transaksi.\n\n\n",segmen,flag
	    printf "Wilayah bagian (region) yang memiliki total keuntungan (profit) yang paling sedikit adalah %s dengan total keuntungan %f",region,total
         } 
	 /home/lathifa/Documents/shift/modul1/Laporan-TokoShiSop.tsv > /home/lathifa/Documents/shift/modul1/hasil.txt
```  
Isi dari *hasil.txt*:  
``` txt
Transaksi terakhir dengan profit percentage terbesar yaitu 9952 dengan presentase 100.00%.


Daftar nama customer di Albuquerque pada tahun 2017 antara lain:
Susan Vittorini
David Wiener
Benjamin Farhat
Michelle Lonsdale


Tipe segmen customer yang penjualannya paling sedikit adalah Home Office dengan 1783 transaksi.


Wilayah bagian (region) yang memiliki total keuntungan (profit) yang paling sedikit adalah Central dengan total keuntungan 39706.362500
```  
![ss hasil txt](https://user-images.githubusercontent.com/55240758/113293385-e4fd3200-931f-11eb-8ae1-206f8154441a.png)

**No. 3**

Kuuhaku adalah orang yang sangat suka mengoleksi foto-foto digital, namun Kuuhaku juga merupakan seorang yang pemalas sehingga ia tidak ingin repot-repot mencari foto, selain itu ia juga seorang pemalu, sehingga ia tidak ingin ada orang yang melihat koleksinya tersebut, sayangnya ia memiliki teman bernama Steven yang memiliki rasa kepo yang luar biasa. Kuuhaku pun memiliki ide agar Steven tidak bisa melihat koleksinya, serta untuk mempermudah hidupnya, yaitu dengan meminta bantuan kalian.
A. Membuat script untuk mengunduh 23 gambar dari "https://loremflickr.com/320/240/kitten" serta menyimpan log-nya ke file "Foto.log". Karena gambar yang diunduh acak, ada kemungkinan gambar yang sama terunduh lebih dari sekali, oleh karena itu kalian harus menghapus gambar yang sama (tidak perlu mengunduh gambar lagi untuk menggantinya). Kemudian menyimpan gambar-gambar tersebut dengan nama "Koleksi_XX" dengan nomor yang berurutan tanpa ada nomor yang hilang

Jawaban :
``` Bash
#!/bin/bash
q=1
j=1
for((j=1;j<=23; j=j+1))
do
        if ((q<10))
        then
		wget -O Koleksi_0$q.jpg -a foto.log https://loremflickr.com/320/240/kitten
                for((i=1; i<q; i=i+1))
                do
			s=$(cmp "./Koleksi_0$i.jpg" "./Koleksi_0$q.jpg")
			a=$?
                        if [ $a -eq 0 ] 
                        then
                                rm "./Koleksi_0$q.jpg"
				q=$((q-1))     
				break
                        fi
                done
        else
		wget -O Koleksi_$q.jpg -a foto.log https://loremflickr.com/320/240/kitten
                for((i=1; i<q; i=i+1))
                do
			if((i<10))
                        then
                                s=$(cmp "./Koleksi_0$i.jpg" "./Koleksi_$q.jpg")
			        a=$?
                                if [ $a -eq 0 ]
                                then
				        rm "./Koleksi_$q.jpg"
				        q=$((q-1))
				        break
                                fi
                        else
                                s=$(cmp "./Koleksi_$i.jpg" "./Koleksi_$q.jpg")
			        a=$?
                                if [ $a -eq 0 ]
                                then
				        rm "./Koleksi_$q.jpg"
				        q=$((q-1))
				        break
                                fi
                        fi
                done
        fi
        q=$((q+1))
done
```
Penyelesaian :
Untuk mengunduh gambar secara berulang ulang, salah satu metode yang bisa digunakan adalah menggunakan looping hingga 23 kali. Mengunduh file dengan perintah wget dengan option -O untuk menamai file sesuai dengan perntah dan -a untuk menyimpan log ke dalam file foto.log. Agar tidak ada foto yang sama, dilakukan checking menggunakan fungsi cmp, apabila return dari fungsi tersebut adalah 0, maka foto tersebut sama. Proses ini juga diulang ulang untuk setiap foto yang terdownload.

Berikut adalah hasil gambar yang terunduh beserta log nya :

![3a](https://user-images.githubusercontent.com/75357640/113313808-d0c42f80-9335-11eb-9b2b-d35b3bff5bf4.PNG)


Berikut adalah contoh dari foto.log yang didapatkan setelah proses:

``` log
--2021-03-30 16:45:45--  https://loremflickr.com/320/240/kitten
Resolving loremflickr.com (loremflickr.com)... 172.67.170.91, 104.21.47.37, 2606:4700:3037::ac43:aa5b, ...
Connecting to loremflickr.com (loremflickr.com)|172.67.170.91|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: /cache/resized/65535_50310242268_3112d0fd3a_320_240_nofilter.jpg [following]
--2021-03-30 16:45:46--  https://loremflickr.com/cache/resized/65535_50310242268_3112d0fd3a_320_240_nofilter.jpg
Reusing existing connection to loremflickr.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 14902 (15K) [image/jpeg]
Saving to: ‘Koleksi_01.jpg’

     0K .......... ....                                       100% 1013K=0.01s

2021-03-30 16:45:46 (1013 KB/s) - ‘Koleksi_01.jpg’ saved [14902/14902]

--2021-03-30 16:45:46--  https://loremflickr.com/320/240/kitten
Resolving loremflickr.com (loremflickr.com)... 172.67.170.91, 104.21.47.37, 2606:4700:3037::ac43:aa5b, ...
Connecting to loremflickr.com (loremflickr.com)|172.67.170.91|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: /cache/resized/65535_51037509582_7b097cb089_320_240_nofilter.jpg [following]
--2021-03-30 16:45:47--  https://loremflickr.com/cache/resized/65535_51037509582_7b097cb089_320_240_nofilter.jpg
Reusing existing connection to loremflickr.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 12216 (12K) [image/jpeg]
Saving to: ‘Koleksi_02.jpg’

     0K .......... .                                          100% 1.13M=0.01s

2021-03-30 16:45:47 (1.13 MB/s) - ‘Koleksi_02.jpg’ saved [12216/12216]

--2021-03-30 16:45:47--  https://loremflickr.com/320/240/kitten
Resolving loremflickr.com (loremflickr.com)... 172.67.170.91, 104.21.47.37, 2606:4700:3037::ac43:aa5b, ...
Connecting to loremflickr.com (loremflickr.com)|172.67.170.91|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: /cache/resized/65535_50338047032_b575c6aacf_320_240_nofilter.jpg [following]
--2021-03-30 16:45:49--  https://loremflickr.com/cache/resized/65535_50338047032_b575c6aacf_320_240_nofilter.jpg
Reusing existing connection to loremflickr.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 9637 (9.4K) [image/jpeg]
Saving to: ‘Koleksi_03.jpg’

     0K .........                                             100% 3.31M=0.003s

2021-03-30 16:45:49 (3.31 MB/s) - ‘Koleksi_03.jpg’ saved [9637/9637]

--2021-03-30 16:45:49--  https://loremflickr.com/320/240/kitten
Resolving loremflickr.com (loremflickr.com)... 172.67.170.91, 104.21.47.37, 2606:4700:3037::ac43:aa5b, ...
Connecting to loremflickr.com (loremflickr.com)|172.67.170.91|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: /cache/resized/65535_50925575496_ded5b41162_320_240_nofilter.jpg [following]
--2021-03-30 16:45:50--  https://loremflickr.com/cache/resized/65535_50925575496_ded5b41162_320_240_nofilter.jpg
Reusing existing connection to loremflickr.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 16627 (16K) [image/jpeg]
Saving to: ‘Koleksi_04.jpg’

     0K .......... ......                                     100% 1.06M=0.02s

2021-03-30 16:45:50 (1.06 MB/s) - ‘Koleksi_04.jpg’ saved [16627/16627]

--2021-03-30 16:45:50--  https://loremflickr.com/320/240/kitten
Resolving loremflickr.com (loremflickr.com)... 172.67.170.91, 104.21.47.37, 2606:4700:3037::ac43:aa5b, ...
Connecting to loremflickr.com (loremflickr.com)|172.67.170.91|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: /cache/resized/65535_51037509582_7b097cb089_320_240_nofilter.jpg [following]
--2021-03-30 16:45:51--  https://loremflickr.com/cache/resized/65535_51037509582_7b097cb089_320_240_nofilter.jpg
Reusing existing connection to loremflickr.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 12216 (12K) [image/jpeg]
Saving to: ‘Koleksi_05.jpg’

     0K .......... .                                          100% 1.25M=0.009s

2021-03-30 16:45:52 (1.25 MB/s) - ‘Koleksi_05.jpg’ saved [12216/12216]

--2021-03-30 16:45:52--  https://loremflickr.com/320/240/kitten
Resolving loremflickr.com (loremflickr.com)... 172.67.170.91, 104.21.47.37, 2606:4700:3037::ac43:aa5b, ...
Connecting to loremflickr.com (loremflickr.com)|172.67.170.91|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: /cache/resized/65535_50745657987_4c85192fa9_n_320_240_nofilter.jpg [following]
--2021-03-30 16:45:53--  https://loremflickr.com/cache/resized/65535_50745657987_4c85192fa9_n_320_240_nofilter.jpg
Reusing existing connection to loremflickr.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 21776 (21K) [image/jpeg]
Saving to: ‘Koleksi_05.jpg’

     0K .......... .......... .                               100%  880K=0.02s

2021-03-30 16:45:53 (880 KB/s) - ‘Koleksi_05.jpg’ saved [21776/21776]

--2021-03-30 16:45:53--  https://loremflickr.com/320/240/kitten
Resolving loremflickr.com (loremflickr.com)... 172.67.170.91, 104.21.47.37, 2606:4700:3037::ac43:aa5b, ...
Connecting to loremflickr.com (loremflickr.com)|172.67.170.91|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: /cache/resized/65535_50956077308_6327c6c947_320_240_nofilter.jpg [following]
--2021-03-30 16:45:54--  https://loremflickr.com/cache/resized/65535_50956077308_6327c6c947_320_240_nofilter.jpg
Reusing existing connection to loremflickr.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 24589 (24K) [image/jpeg]
Saving to: ‘Koleksi_06.jpg’

     0K .......... .......... ....                            100%  794K=0.03s

2021-03-30 16:45:54 (794 KB/s) - ‘Koleksi_06.jpg’ saved [24589/24589]

--2021-03-30 16:45:54--  https://loremflickr.com/320/240/kitten
Resolving loremflickr.com (loremflickr.com)... 172.67.170.91, 104.21.47.37, 2606:4700:3037::ac43:aa5b, ...
Connecting to loremflickr.com (loremflickr.com)|172.67.170.91|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: /cache/resized/65535_50921453436_663cd8a883_320_240_nofilter.jpg [following]
--2021-03-30 16:45:55--  https://loremflickr.com/cache/resized/65535_50921453436_663cd8a883_320_240_nofilter.jpg
Reusing existing connection to loremflickr.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 15006 (15K) [image/jpeg]
Saving to: ‘Koleksi_07.jpg’

     0K .......... ....                                       100% 1003K=0.01s

2021-03-30 16:45:56 (1003 KB/s) - ‘Koleksi_07.jpg’ saved [15006/15006]

--2021-03-30 16:45:56--  https://loremflickr.com/320/240/kitten
Resolving loremflickr.com (loremflickr.com)... 172.67.170.91, 104.21.47.37, 2606:4700:3037::ac43:aa5b, ...
Connecting to loremflickr.com (loremflickr.com)|172.67.170.91|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: /cache/resized/65535_50488056162_04ebb8bd48_320_240_nofilter.jpg [following]
--2021-03-30 16:45:57--  https://loremflickr.com/cache/resized/65535_50488056162_04ebb8bd48_320_240_nofilter.jpg
Reusing existing connection to loremflickr.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 19030 (19K) [image/jpeg]
Saving to: ‘Koleksi_08.jpg’

     0K .......... ........                                   100% 1.05M=0.02s

2021-03-30 16:45:57 (1.05 MB/s) - ‘Koleksi_08.jpg’ saved [19030/19030]

--2021-03-30 16:45:57--  https://loremflickr.com/320/240/kitten
Resolving loremflickr.com (loremflickr.com)... 172.67.170.91, 104.21.47.37, 2606:4700:3037::ac43:aa5b, ...
Connecting to loremflickr.com (loremflickr.com)|172.67.170.91|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: /cache/resized/65535_50343217467_162d62138a_320_240_nofilter.jpg [following]
--2021-03-30 16:45:58--  https://loremflickr.com/cache/resized/65535_50343217467_162d62138a_320_240_nofilter.jpg
Reusing existing connection to loremflickr.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 9342 (9.1K) [image/jpeg]
Saving to: ‘Koleksi_09.jpg’

     0K .........                                             100%  108M=0s

2021-03-30 16:45:58 (108 MB/s) - ‘Koleksi_09.jpg’ saved [9342/9342]

--2021-03-30 16:45:58--  https://loremflickr.com/320/240/kitten
Resolving loremflickr.com (loremflickr.com)... 172.67.170.91, 104.21.47.37, 2606:4700:3037::ac43:aa5b, ...
Connecting to loremflickr.com (loremflickr.com)|172.67.170.91|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: /cache/resized/65535_50819271792_25b4393abc_320_240_nofilter.jpg [following]
--2021-03-30 16:46:00--  https://loremflickr.com/cache/resized/65535_50819271792_25b4393abc_320_240_nofilter.jpg
Reusing existing connection to loremflickr.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 11980 (12K) [image/jpeg]
Saving to: ‘Koleksi_10.jpg’

     0K .......... .                                          100% 1.92M=0.006s

2021-03-30 16:46:00 (1.92 MB/s) - ‘Koleksi_10.jpg’ saved [11980/11980]

--2021-03-30 16:46:00--  https://loremflickr.com/320/240/kitten
Resolving loremflickr.com (loremflickr.com)... 172.67.170.91, 104.21.47.37, 2606:4700:3037::ac43:aa5b, ...
Connecting to loremflickr.com (loremflickr.com)|172.67.170.91|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: /cache/resized/65535_50601215527_e7b8fca980_n_320_240_nofilter.jpg [following]
--2021-03-30 16:46:01--  https://loremflickr.com/cache/resized/65535_50601215527_e7b8fca980_n_320_240_nofilter.jpg
Reusing existing connection to loremflickr.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 12431 (12K) [image/jpeg]
Saving to: ‘Koleksi_11.jpg’

     0K .......... ..                                         100% 1.35M=0.009s

2021-03-30 16:46:01 (1.35 MB/s) - ‘Koleksi_11.jpg’ saved [12431/12431]

--2021-03-30 16:46:01--  https://loremflickr.com/320/240/kitten
Resolving loremflickr.com (loremflickr.com)... 172.67.170.91, 104.21.47.37, 2606:4700:3037::ac43:aa5b, ...
Connecting to loremflickr.com (loremflickr.com)|172.67.170.91|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: /cache/resized/31337_50990912363_1d5914b0de_320_240_nofilter.jpg [following]
--2021-03-30 16:46:02--  https://loremflickr.com/cache/resized/31337_50990912363_1d5914b0de_320_240_nofilter.jpg
Reusing existing connection to loremflickr.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 5072 (5.0K) [image/jpeg]
Saving to: ‘Koleksi_12.jpg’

     0K ....                                                  100% 9.17M=0.001s

2021-03-30 16:46:03 (9.17 MB/s) - ‘Koleksi_12.jpg’ saved [5072/5072]

--2021-03-30 16:46:03--  https://loremflickr.com/320/240/kitten
Resolving loremflickr.com (loremflickr.com)... 172.67.170.91, 104.21.47.37, 2606:4700:3037::ac43:aa5b, ...
Connecting to loremflickr.com (loremflickr.com)|172.67.170.91|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: /cache/resized/1009_1393356772_4c747277b2_n_320_240_nofilter.jpg [following]
--2021-03-30 16:46:04--  https://loremflickr.com/cache/resized/1009_1393356772_4c747277b2_n_320_240_nofilter.jpg
Reusing existing connection to loremflickr.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 23896 (23K) [image/jpeg]
Saving to: ‘Koleksi_13.jpg’

     0K .......... .......... ...                             100%  790K=0.03s

2021-03-30 16:46:04 (790 KB/s) - ‘Koleksi_13.jpg’ saved [23896/23896]

--2021-03-30 16:46:04--  https://loremflickr.com/320/240/kitten
Resolving loremflickr.com (loremflickr.com)... 172.67.170.91, 104.21.47.37, 2606:4700:3037::ac43:aa5b, ...
Connecting to loremflickr.com (loremflickr.com)|172.67.170.91|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: /cache/resized/65535_50327661363_e835c1f837_320_240_nofilter.jpg [following]
--2021-03-30 16:46:05--  https://loremflickr.com/cache/resized/65535_50327661363_e835c1f837_320_240_nofilter.jpg
Reusing existing connection to loremflickr.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 15071 (15K) [image/jpeg]
Saving to: ‘Koleksi_14.jpg’

     0K .......... ....                                       100%  991K=0.01s

2021-03-30 16:46:05 (991 KB/s) - ‘Koleksi_14.jpg’ saved [15071/15071]

--2021-03-30 16:46:05--  https://loremflickr.com/320/240/kitten
Resolving loremflickr.com (loremflickr.com)... 172.67.170.91, 104.21.47.37, 2606:4700:3037::ac43:aa5b, ...
Connecting to loremflickr.com (loremflickr.com)|172.67.170.91|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: /cache/resized/65535_50620937283_d915e255cf_320_240_nofilter.jpg [following]
--2021-03-30 16:46:07--  https://loremflickr.com/cache/resized/65535_50620937283_d915e255cf_320_240_nofilter.jpg
Reusing existing connection to loremflickr.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 15951 (16K) [image/jpeg]
Saving to: ‘Koleksi_15.jpg’

     0K .......... .....                                      100% 1.78M=0.009s

2021-03-30 16:46:07 (1.78 MB/s) - ‘Koleksi_15.jpg’ saved [15951/15951]

--2021-03-30 16:46:07--  https://loremflickr.com/320/240/kitten
Resolving loremflickr.com (loremflickr.com)... 172.67.170.91, 104.21.47.37, 2606:4700:3037::ac43:aa5b, ...
Connecting to loremflickr.com (loremflickr.com)|172.67.170.91|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: /cache/resized/65535_50488056162_04ebb8bd48_320_240_nofilter.jpg [following]
--2021-03-30 16:46:08--  https://loremflickr.com/cache/resized/65535_50488056162_04ebb8bd48_320_240_nofilter.jpg
Reusing existing connection to loremflickr.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 19030 (19K) [image/jpeg]
Saving to: ‘Koleksi_16.jpg’

     0K .......... ........                                   100%  997K=0.02s

2021-03-30 16:46:08 (997 KB/s) - ‘Koleksi_16.jpg’ saved [19030/19030]

--2021-03-30 16:46:08--  https://loremflickr.com/320/240/kitten
Resolving loremflickr.com (loremflickr.com)... 172.67.170.91, 104.21.47.37, 2606:4700:3037::ac43:aa5b, ...
Connecting to loremflickr.com (loremflickr.com)|172.67.170.91|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: /cache/resized/65535_50917877588_9db3484f10_320_240_nofilter.jpg [following]
--2021-03-30 16:46:09--  https://loremflickr.com/cache/resized/65535_50917877588_9db3484f10_320_240_nofilter.jpg
Reusing existing connection to loremflickr.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 9724 (9.5K) [image/jpeg]
Saving to: ‘Koleksi_16.jpg’

     0K .........                                             100% 2.26M=0.004s

2021-03-30 16:46:10 (2.26 MB/s) - ‘Koleksi_16.jpg’ saved [9724/9724]

--2021-03-30 16:46:10--  https://loremflickr.com/320/240/kitten
Resolving loremflickr.com (loremflickr.com)... 172.67.170.91, 104.21.47.37, 2606:4700:3037::ac43:aa5b, ...
Connecting to loremflickr.com (loremflickr.com)|172.67.170.91|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: /cache/resized/2137_5698463352_e00807c5aa_320_240_nofilter.jpg [following]
--2021-03-30 16:46:11--  https://loremflickr.com/cache/resized/2137_5698463352_e00807c5aa_320_240_nofilter.jpg
Reusing existing connection to loremflickr.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 15398 (15K) [image/jpeg]
Saving to: ‘Koleksi_17.jpg’

     0K .......... .....                                      100% 1.22M=0.01s

2021-03-30 16:46:12 (1.22 MB/s) - ‘Koleksi_17.jpg’ saved [15398/15398]

--2021-03-30 16:46:12--  https://loremflickr.com/320/240/kitten
Resolving loremflickr.com (loremflickr.com)... 172.67.170.91, 104.21.47.37, 2606:4700:3037::ac43:aa5b, ...
Connecting to loremflickr.com (loremflickr.com)|172.67.170.91|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: /cache/resized/65535_50985846496_b8c64c6f20_320_240_nofilter.jpg [following]
--2021-03-30 16:46:13--  https://loremflickr.com/cache/resized/65535_50985846496_b8c64c6f20_320_240_nofilter.jpg
Reusing existing connection to loremflickr.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 8629 (8.4K) [image/jpeg]
Saving to: ‘Koleksi_18.jpg’

     0K ........                                              100%  919K=0.009s

2021-03-30 16:46:13 (919 KB/s) - ‘Koleksi_18.jpg’ saved [8629/8629]

--2021-03-30 16:46:13--  https://loremflickr.com/320/240/kitten
Resolving loremflickr.com (loremflickr.com)... 172.67.170.91, 104.21.47.37, 2606:4700:3037::ac43:aa5b, ...
Connecting to loremflickr.com (loremflickr.com)|172.67.170.91|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: /cache/resized/462_19922792966_1f9fe45be7_320_240_nofilter.jpg [following]
--2021-03-30 16:46:14--  https://loremflickr.com/cache/resized/462_19922792966_1f9fe45be7_320_240_nofilter.jpg
Reusing existing connection to loremflickr.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 13102 (13K) [image/jpeg]
Saving to: ‘Koleksi_19.jpg’

     0K .......... ..                                         100% 1.72M=0.007s

2021-03-30 16:46:14 (1.72 MB/s) - ‘Koleksi_19.jpg’ saved [13102/13102]

--2021-03-30 16:46:14--  https://loremflickr.com/320/240/kitten
Resolving loremflickr.com (loremflickr.com)... 172.67.170.91, 104.21.47.37, 2606:4700:3037::ac43:aa5b, ...
Connecting to loremflickr.com (loremflickr.com)|172.67.170.91|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: /cache/resized/65535_50807295192_39ed0da69d_320_240_nofilter.jpg [following]
--2021-03-30 16:46:16--  https://loremflickr.com/cache/resized/65535_50807295192_39ed0da69d_320_240_nofilter.jpg
Reusing existing connection to loremflickr.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 11026 (11K) [image/jpeg]
Saving to: ‘Koleksi_20.jpg’

     0K ..........                                            100% 2.30M=0.005s

2021-03-30 16:46:16 (2.30 MB/s) - ‘Koleksi_20.jpg’ saved [11026/11026]

--2021-03-30 16:46:16--  https://loremflickr.com/320/240/kitten
Resolving loremflickr.com (loremflickr.com)... 172.67.170.91, 104.21.47.37, 2606:4700:3037::ac43:aa5b, ...
Connecting to loremflickr.com (loremflickr.com)|172.67.170.91|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: /cache/resized/65535_50327661363_e835c1f837_320_240_nofilter.jpg [following]
--2021-03-30 16:46:17--  https://loremflickr.com/cache/resized/65535_50327661363_e835c1f837_320_240_nofilter.jpg
Reusing existing connection to loremflickr.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 15071 (15K) [image/jpeg]
Saving to: ‘Koleksi_21.jpg’

     0K .......... ....                                       100% 1.87M=0.008s

2021-03-30 16:46:17 (1.87 MB/s) - ‘Koleksi_21.jpg’ saved [15071/15071]

```

Kendala yang dihadapi untuk mengerjakan soal ini adalah mencari cara untuk membandingkan gambar apakah sama atau tidak. Awalnya saya berpikir untuk membadingkan tautan dengan mengambilnya dari file log dengan awk, namun saya menemukan cara yang lebih mudah yaitu dengan fungsi cmp.

B. Karena Kuuhaku malas untuk menjalankan script tersebut secara manual, ia juga meminta kalian untuk menjalankan script tersebut sehari sekali pada jam 8 malam untuk tanggal-tanggal tertentu setiap bulan, yaitu dari tanggal 1 tujuh hari sekali (1,8,...), serta dari tanggal 2 empat hari sekali(2,6,...). Supaya lebih rapi, gambar yang telah diunduh beserta log-nya, dipindahkan ke folder dengan nama tanggal unduhnya dengan format "DD-MM-YYYY" (contoh : "13-03-2023").
Jawaban :
Bash :
``` Bash
#!/bin/bash

cd ~/soal-shift-sisop-modul-1-B10-2021/soal3:
bash ./soal3a.sh
now=$(date +"%d-%m-%Y")
mkdir "$now"

mv ./Koleksi_* "./$now/"
mv ./foto.log "./$now/"
```
Crontab :
``` tab
0 20 1-31/7,2-31/4 * * bash ./home/detechtive/soal-shift-sisop-modul-1-B10-2021/soal3:/soal3b.sh
```
Penyelesaian :
Untuk melakukan pemindahan, terlebih dahulu membuat folder berdasarkan format tanggal hari ini. Membuat folder dengan fungsi mkdir dengan nama sesuai tanggal hari ini (DDMMYYYY) dengan fungsi date. Untuk crontabnya, 0 dan 20 diawal menunjukkan tiap pukul 20:00, 1-31/7 mulai tanggal 1 hingga tanggal 31 tiap 7 hari sekali, 2-31/4 berarti dimulai tanggal 2 hingga tanggal 31 tiap 4 hari sekali.

Hasil folder setelah proses :

![3b](https://user-images.githubusercontent.com/75357640/113314214-45976980-9336-11eb-8a44-1a4bcc573aae.PNG)

Kendala yang dihadapi untuk menyelesaikan permasalahan ini adalah untuk membuat file crontabnya, karena saat itu saya masih kurang paham dengan crontab. Awalnya saya menggunakan 2 line crontab untuk 2 wakt yang berbeda, ternyata bisa menggunakan 1 line cron dengan dipisahkan koma.

C. Agar kuuhaku tidak bosan dengan gambar anak kucing, ia juga memintamu untuk mengunduh gambar kelinci dari "https://loremflickr.com/320/240/bunny". Kuuhaku memintamu mengunduh gambar kucing dan kelinci secara bergantian (yang pertama bebas. contoh : tanggal 30 kucing > tanggal 31 kelinci > tanggal 1 kucing > ... ). Untuk membedakan folder yang berisi gambar kucing dan gambar kelinci, nama folder diberi awalan "Kucing_" atau "Kelinci_" (contoh : "Kucing_13-03-2023").
Jawaban :
``` Bash
#!/bin/bash
kemarin=$(date -d yesterday +"%d-%m-%Y")
now=$(date +"%d-%m-%Y")
slocate=$(ls Kucing_$now)
locate=$?
if ((locate==0))
then
    q=1
    j=1
    mkdir "Kelinci_$now"
    for((j=1;j<=23; j=j+1))
    do
            if ((q<10))
            then
            wget -O Koleksi_0$q.jpg -a foto.log https://loremflickr.com/320/240/bunny
                    for((i=1; i<q; i=i+1))
                    do
                s=$(cmp "./Koleksi_0$i.jpg" "./Koleksi_0$q.jpg")
                a=$?
                            if [ $a -eq 0 ] 
                            then
                                    rm "./Koleksi_0$q.jpg"
                    q=$((q-1))
                    break
                            fi
                    done
            else
            wget -O Koleksi_$q.jpg -a foto.log https://loremflickr.com/320/240/bunny
                    for((i=1; i<q; i=i+1))
                    do
                if((i<10))
                            then
                                    s=$(cmp "./Koleksi_0$i.jpg" "./Koleksi_$q.jpg")
                        a=$?
                                    if [ $a -eq 0 ]
                                    then
                            rm "./Koleksi_$q.jpg"
                            q=$((q-1))
                            break
                                    fi
                            else
                                    s=$(cmp "./Koleksi_$i.jpg" "./Koleksi_$q.jpg")
                        a=$?
                                    if [ $a -eq 0 ]
                                    then
                            rm "./Koleksi_$q.jpg"
                            q=$((q-1))
                            break
                                    fi
                            fi
                    done
            fi
            q=$((q+1))
    done
    mv ./Koleksi_* "./Kelinci_$now/"
    mv ./foto.log "./Kelinci_$now/"
else
    q=0
    j=0
    mkdir "Kucing_$now"
    for((j=1;j<=23; j=j+1))
    do
            if ((q<10))
            then
            wget -O Koleksi_0$q.jpg -a foto.log https://loremflickr.com/320/240/kitten
                    for((i=1; i<q; i=i+1))
                    do
                s=$(cmp "./Koleksi_0$i.jpg" "./Koleksi_0$q.jpg")
                a=$?
                            if [ $a -eq 0 ] 
                            then
                                    rm "./Koleksi_0$q.jpg"
                    q=$((q-1))
                    break
                            fi
                    done
            else
            wget -O Koleksi_$q.jpg -a foto.log https://loremflickr.com/320/240/kitten
                    for((i=1; i<q; i=i+1))
                    do
                if((i<10))
                            then
                                    s=$(cmp "./Koleksi_0$i.jpg" "./Koleksi_$q.jpg")
                        a=$?
                                    if [ $a -eq 0 ]
                                    then
                            rm "./Koleksi_$q.jpg"
                            q=$((q-1))
                            break
                                    fi
                            else
                                    s=$(cmp "./Koleksi_$i.jpg" "./Koleksi_$q.jpg")
                        a=$?
                                    if [ $a -eq 0 ]
                                    then
                            rm "./Koleksi_$q.jpg"
                            q=$((q-1))
                            break
                                    fi
                            fi
                    done
            fi
            q=$((q+1))
    done
    mv ./Koleksi_* "./Kucing_$now/"
    mv ./foto.log "./Kucing_$now/"
fi
```
Penyelesaian :
Sama seperti poin a dan b, untuk poin c ini untuk memeriksa folder sudah ada atau tidak bisa menggunakan fungsi ls untuk mencari folder degan nama kuring dan tanggal kemarin, jika returnnya 0, maka akan mendownload kelnci, karena folder kucing sudah ada.

Berikut hasil dari proses diatas :

![3c](https://user-images.githubusercontent.com/75357640/113315360-6613f380-9337-11eb-9993-c6f5e58452e3.PNG)

Kendala yang dihadapi selama mengerjakan soal 3c tidak ada, karena sama soal 3a.

D. Untuk mengamankan koleksi Foto dari Steven, Kuuhaku memintamu untuk membuat script yang akan memindahkan seluruh folder ke zip yang diberi nama “Koleksi.zip” dan mengunci zip tersebut dengan password berupa tanggal saat ini dengan format "MMDDYYYY" (contoh : “03032003”).
Jawaban :
``` Bash
zip -q -P `date +"%m%d%Y"` -r -m Koleksi.zip ./Kucing* ./Kelinci*
```
Penjelasan :
Untuk memasukkan folder kedalam menggunakan fungsi zip dengan option -q agar log tidak tampil di terminal, -P untuk set password pada zipnya dengan format tanggal hari ini (MMDDYYYY), -r untuk memasukkan semua file secara recursive, -m untuk menghapus folder setelah di zip.

Berikut hasil dari proses diatas :

![3d](https://user-images.githubusercontent.com/75357640/113315648-b428f700-9337-11eb-806e-c78658ba4f2a.PNG)

Kedala yang dihadapi adalah cara untuk memberikan password. Awalnya saya bingung karena saya tidak tahu cara untuk mengatur agar passwordnya sesuai tanggal hari ini.

E. Karena kuuhaku hanya bertemu Steven pada saat kuliah saja, yaitu setiap hari kecuali sabtu dan minggu, dari jam 7 pagi sampai 6 sore, ia memintamu untuk membuat koleksinya ter-zip saat kuliah saja, selain dari waktu yang disebutkan, ia ingin koleksinya ter-unzip dan tidak ada file zip sama sekali.
Jawaban :
``` tab
0 7 * * 1-5 zip -q -P `date +"%m%d%Y"` -r Koleksi.zip ./Kucing* ./Kelinci*
0 18 * * 1-5 unzip -q -P `date +"%m%d%Y"` Koleksi.zip && rm Koleksi.zip
```
Penjelasan :
Sama seperti poin D, untuk arti dari crontabnya, 0 7 berarti setiap pukul 7 AM, 1-5 dibelakang berarti tiap hari senin-jumat, karena proses ini hanya dilakukan di jam kuliah. 0 18 berarti setiap pukul 18 / 6 PM, 1-5 dibelakang berarti tiap hari senin-jumat. Pada proses unzip, ditambahkan fungsi rm agar file zip terhapus.

Kendala untuk nomor ini adalah tidak ada, karena kendalanya sudah saya hadapi di nomor 3b dan 3d.
