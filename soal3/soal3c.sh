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