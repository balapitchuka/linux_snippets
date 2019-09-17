for var in 0 1 23 6 7 9 234
do
  echo $var
done

echo "current script name is : $0"
echo "current working directory is : $(pwd)"

# list all files in cwd
for file in '*'
do
  echo $file
done 

for file in $HOME/.bash*
do
  echo $file
done


