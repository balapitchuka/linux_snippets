## shell commands

#### alias

The alias command lets you give your own name to a command or sequence of commands
```
alias cls=clear

alias pf="ps -e | grep $1"
pf shutter
```

#### cat
cat command (short for “concatenate”) lists the contents of files to the terminal window

#### cd
cd command changes your current directory
```
change to your home directory
cd ~
```
#### chmod
chmod command sets the file permissions flags on a file or folder
```
    0: No permission 
    1: Execute permission
    2: Write permission
    3: Write and execute permissions
    4: Read permission
    5: Read and execute permissions
    6: Read and write permissions
    7: Read, write and execute permissions
```
#### echo
echo command prints (echoes) a string of text to the terminal window
```
echo A string of text
echo "echo A string of text"     # output same as above command

echo $USER
echo $HOME
echo $PATH
```

#### find
find command to track down files

#### finger
finger command gives you a short dump of information about a user, including the time of the user’s last login, the user’s home directory, and the user account’s full name

#### free
free command gives you a summary of the memory usage with your computer. It does this for both the main Random Access Memory (RAM) and swap memory.
```
free    # in bytes

free -h   #(human) option is used to provide human-friendly numbers and units

```

#### grep
The grep utility searches for lines which contain a search pattern.
```
grep train *.txt
```
