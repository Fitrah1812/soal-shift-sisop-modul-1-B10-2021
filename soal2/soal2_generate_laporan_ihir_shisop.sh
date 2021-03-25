#!bin/bash
awk 'BEGIN {FS="\t"} 
	#{if ($1 == 20) {nama=$7} }
	#{n=0;sales=$19;profit=$21;find=($21/($18-$21))*100} 
	#2A
	 {if (find <= ($21/($18-$21))*100) 
		{
		find=($21/($18-$21))*100
       		n=$1
		}
	 } 

	#2B
	 {if ($3 ~/17/ && $10 == "Albuquerque" && counter>=0)
	  	{nama[counter]=$7;counter++}
	 }

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

     END {
            #printf "Ini nama %s",nama
	    
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
	#{printf "Transaksi terakhir dengan profit percentage terbesar yaitu %d dengan presentase %.f "%."" ,NR,find}

     ' /home/lathifa/Documents/shift/modul1/Laporan-TokoShiSop.tsv > /home/lathifa/Documents/shift/modul1/hasil.txt

