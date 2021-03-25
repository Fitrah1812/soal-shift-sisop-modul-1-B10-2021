#!/bin/bash
q=0
for((q=1;q<=23; q=q+1))
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
done
