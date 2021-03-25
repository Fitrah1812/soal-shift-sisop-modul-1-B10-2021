#!/bin/bash

cd ~/soal-shift-sisop-modul-1-B10-2021/soal3:
bash ./soal3a.sh
now=$(date +"%d-%m-%Y")
mkdir "$now"

mv ./Koleksi_* "./$now/"
mv ./foto.log "./$now/"

