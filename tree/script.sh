#!/bin/bash

#pomocnicza funkcja ma na celu przeiterowania lokalizacji pod katem istniejacych katalogow
function is_dir()
{
IS_DIR=($(ls -F|grep /|tr -d /))
SIZE=$(ls -F|grep /|tr -d / | wc -l)
for i in "${SIZE[*]}"
do
#echo "${IS_DIR[i]}";
cd ${IS_DIR[i]}
done
}

#funkcja ma na celu zwrocenie na ekran nazw znalezionych katalogow
function tree()
{
IS_DIR=($(ls -F|grep /|tr -d /))
SIZE=$(ls -F|grep /|tr -d / | wc -l)
if [ -d ${is_dir} ]; then
	for k in "${SIZE[*]}"
	do
	echo ${IS_DIR[*]}
	done
else echo "Katalogow juz brak!"
fi
}

# main:
#CYGWIN=$(sed -i 's/\r$//') script.sh
is_dir
#${is_dir[0]}
echo "Lista katalogow: "
tree


