#!/usr/bin/env bash

file="./file-demo"
num=30
bool=true

echo "Num: $num"

if [[ $num -gt 25  && $bool ]]; then
  echo "$num gt 25 and bool is true"
else
  echo "bool is false"
fi

if [ -s $file ]; then
  echo "File exists and it's not empty; contents:"
  cat $file
elif [ ! -f $file ]; then
  echo "File does not exist"
else
  echo "File is empty"
fi

ls
err=$?

if [[ $err -eq 0 ]]; then
    echo "No error"
else
    echo "Error"
fi
echo "Exit code $err"

if [ -w $file ] && [ -r $file ]; then
  ls > $file
fi

case "$1" in 
    que) echo "so"
    ;;
    so) echo "pa"
    ;;
    *) echo "Wrong!"
esac

choice=4
echo "1. First"
echo "2. Second"
echo "3. Third"
echo -n "Chose one option [1, 2, 3]: "

while [ "$choice" -eq 4 ]; do
  read -r choice
  if [ "$choice" -eq 1 ] ; then
    echo "1"
  elif [ "$choice" -eq 2 ] ; then
    echo "2"
  elif [ "$choice" -eq 3 ] ; then
    echo "3"
  else
    choice=4
    echo "Error! Choose [1, 2, or 3]"
    echo -n "Chose one option [1, 2, 3]: "
  fi
done

numbers=(1 2 3 4)
for num in "${numbers[@]}"; do
  echo num: "$num"
done

echo "There are ${#numbers[*]} numbers"

for ((i=0;i<"$choice";i++)); do
  echo $i
done

add() {
  echo "$1" + "$2" = $(($1 + $2))
}

sum=$(add 2 1)
echo "$sum"
