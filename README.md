# Table Of Contents
1. [Shell Commands](#shell_commands)
2. [Linux Shells](#linux_shells)
3. [Linux Networking](#networking)

<a id='shell'></a>
## Shell Commands


### alias

The alias command lets you give your own name to a command or sequence of commands
```
alias cls=clear

alias pf="ps -e | grep $1"
pf shutter
```

### cat
cat command (short for “concatenate”) lists the contents of files to the terminal window

### cd
cd command changes your current directory
```
# change to your home directory
cd ~
```
### chmod
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
### echo
echo command prints (echoes) a string of text to the terminal window
```
echo A string of text
echo "echo A string of text"     # output same as above command

echo $USER
echo $HOME
echo $PATH
```

### find
find command to track down files

### finger
finger command gives you a short dump of information about a user, including the time of the user’s last login, the user’s home directory, and the user account’s full name

### free
free command gives you a summary of the memory usage with your computer. It does this for both the main Random Access Memory (RAM) and swap memory.
```
free    # in bytes

free -h   #(human) option is used to provide human-friendly numbers and units

```

### grep
The grep utility searches for lines which contain a search pattern.
```
grep train *.txt
```

### groups
The groups command tells you which groups a user is a member of.

### gzip
The gzip command compresses files. 
By default, it removes the original file and leaves you with the compressed version. 
To retain both the original and the compressed version, use the -k (keep) option.
```
gzip -k core.c  #k (keep)
```

### head
The head command gives you a listing of the first 10 lines of a file.
```
head core.c

head -n 5 core.c  # n(number)
```

### history
history command lists the commands you have previously issued on the command line.
```
history

# repeat any of the commands from your history by typing an exclamation point ! and the number of the command from the history
# list
!188

# Typing two exclamation points repeats your previous command.
!!
```

### kill
The kill command allows you to terminate a process from the command line
```
ps -e | grep shutter    #search for the shutter process and obtain its PID as follows

kill 1692               # pid of shutter

```
### less
less command allows you to view files without opening an editor.

### ls
lists the files and folders in the directory you specify. By default, ls looks in the current directory.
```
# To list the files and folders in the current directory:
ls

# To list the files and folders in the current directory with a detailed listing use the -l (long) option:
ls -l

# To use human-friendly file sizes include the -h (human) option:
ls -lh

# To include hidden files use the -a (all files) option:
ls -lha

```

### mkdir
mkdir command allows you to create new directories in the filesystem
```
mkdir invoices

mkdir invoices/2109            # to create new directory 2109 inside invoices

mkdir -p quotes/yearly/2019    # to create all directory and subdirectory at once
```

### rm  
we can remove both files and directories using rm command
```
# removes file with name hello.txt
rm hello.txt
Note: If the file is write protected you will be prompted for confirmation.     

# To remove all files with specific extension
rm *.pdf                    # removes all files with .pdf extension in current directory

# To confirm each file before deleting it use, -i
rm -i hello.txt

# To remove files without prompting even if the files are write-protected use, -f(force)
 rm -f hello.txt

# To remove all .txt files in the current directory without a prompt in verbose mode(-v).
rm -fv *.txt

# To remove empty directory use , -d(directory)
rm -d hello    # removes directory with name hello

# To remove non-empty directories and all the files within them use, -r(recursive)
rm -r hello
Note: If a directory or a file within the directory is write-protected, 
      you will be prompted to confirm the deletion.

# To remove non-empty directories and all the files without being prompted use, -f(force)
rm -rf hello

# To remove multiple directories at once
rm -r dirname1 dirname2 dirname3


```

### shutdown
shutdown with no parameters will shut down your computer in one minute
```
shutdown      # in one minute

shutdown now  # immediately

shutdown -c   # cancel shutdown sheduled say for some minutes
```



### File System

```
1) ~ refers to the current user's home directory.
      usage : cd ~/Desktop

2) handling spaces in paths: 

     -- Path names can contain almost any character, but some characters, such as space, must be escaped in most software, usually 
       by enclosing the name in quotation marks.
       
       usage : "~/Examples/Experience ubuntu.ogg"
                ( or ) 
      -- by employing the escape character \:

        usage : ~/Examples/Experience\ ubuntu.ogg
    
```

<a id="linux_shells"></a>
## Linux Shells

- **cat /etc/shells** – List pathnames of valid login shells currently installed
- **grep "^$USER" /etc/passwd** – Print the default shell name. The default shell runs when you open a terminal window.
- **chsh -s /bin/ksh** – Change the shell used from /bin/bash (default) to /bin/ksh for your account
- **echo $0** – Another reliable and simple method to get the current shell interpreter name on Linux or Unix-like systems.


## Networking <a name="networking"> </a>

### Get IP address of domain using domain name
- Windows OS:
	- `nslookup  myfirstrecord.stephanetheteacher.com`

- Dig deeper into domain
    - Macos/linux
	    - `dig myfirstrecord.stephanetheteacher.com`

