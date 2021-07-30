#!/bin/bash

menghapusDBMysql(){
jawaban="Y"
read -p "Apakah kamu yakin akan menghapus database Mysql ? (Y/n) " pilih;
if [ $pilih == $jawaban ];
then
echo "Menghapus mysql secara utuh"
sudo apt-get remove -y mysql-*
sudo apt-get autoremove -y
sudo apt-get purge -y mysql-*
echo "Check status mysql"
ps aux | grep mysql
echo "Menghapus mysql Selesai"
else
echo "Proses dibatalkan"
exit 1
fi
}

main(){
  menghapusDBMysql
}

main

