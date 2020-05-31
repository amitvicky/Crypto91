#!/bin/sh
#set -x
clear
echo -e  "======================================================================" #\n
echo -e  "=============This Program Create Recursive Direcectory================" #\n
echo -e  "~~~~~~~~~~" Currnet Date And Time is "\033[6m $(date +"%Y-%m-%d %H:%M:%S")\033[0m" "~~~~~~~~~~~~" 
echo -e  "======================================================================" '\v \v'
echo -en "Please Choose Directory Name: "
read  INPUT_STRING
                                                                                                                                                     
if [ -z "$INPUT_STRING" ];then
        echo -e '\v' "Directory name not choosen"
        exit 0
fi
for dir1 in {0..5} s
domkdir $INPUT_STRING${dir1}
                for dir2 in 0 1 2 3 4 5 s
                do
                        mkdir $INPUT_STRING${dir1}/${dir2}
                done
done
echo -e '\v' "Do you listed out directory list" 
echo -e '\v' "IF yes type \"yes\" else type \"no\""
while read i
do
        case $i in
                [yY][Yy][Ee][sS]*) echo -e "####### Congrates!! Your files has been created .........................." '\v \v'
                        ls -ld $INPUT_STRING*/* | less
                        exit 0;;
                [nN][Nn][Oo])  echo -e "######## Congreates!! Your files has been created" '\v \v'
                        exit 0 ;;
                                *) echo "Sorry, plese choose [Y]es or [N]o .....
                                              Anyway your files has been created please check ..."
                        break
                        ;;
        esac
done
#set +x