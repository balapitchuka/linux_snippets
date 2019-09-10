echo "if else statment"
echo "current working directory:$(pwd)"
echo "current working file name is: $0"

a=20
b=30

echo value of a is $a
echo value of b is $b

if [ $a == $b ]
then 
   echo $a is equal to $b
fi


if [ $a == $b ]
then
   echo $a is equal to $b
else
   echo $a is not equal to $b
fi


if [ $a -gt $b ] 
then 
   echo $a is greater than $b
elif [ $a -lt $b ]
then 
   echo $a is lessthan $b
else
   echo $a is equal to $b
fi


