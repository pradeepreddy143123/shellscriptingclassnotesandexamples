# shell-scripting

Shell Scripting class notes with examples

Command Description syntax
--------------------------
angle brackets for required parameters: ping <hostname>
square brackets for optional parameters: mkdir [-p] <dirname>
ellipses for repeated items: cp <source1> [source2...] <dest>
vertical bars for choice of items: netstat {-t|-u}

What is Shell?
-------------
Shell is a tool to execute commands.

Shell Script:
------------
A shell script is a computer program designed to be run by the Unix shell, a command line interpreter. 

Shell Syntax:
-------------
variables: strings,numbers,environments and parameters
Conditions: Shell Booleans
Program control: if, elif,for,while,untile,case
Lists
Functions


The below examples explain shell programming basics:
---------------------------------------------------

Hello World Schell Program:
---------------------------
hello.sh: Hello World Shell Program (echo and read commands).



Quotations & Substitutions:
---------------------------
quotations.sh: How to use environment variables and quotations in shell.


Shell Parameters:
----------------
parameters.sh: shell command line arguments.

$0	The name of the shell script
$#	The number of parameters passed
$$	The process ID of the shell script

$1,$2,...	The parameters given to the script
$*		list of all the parameters, in a single variable, separated by the first character in the environment variable IFS.
$@ 		A subtle variation on $*; it doesn’t use the IFS environment variable, so parameters are not run together even if IFS is empty



Shell Conditions: [conditions.sh]
-----------------
3 types of conditions 

	String Comparison Result
	---------------------
	string1 = string2	True if the strings are equal
	string1 != string2	True if the strings are not equal
	-n string		True if the string is not null
	-z string		True if the string is null (an empty string

	Arithmetic Comparison Result
	----------------------------
	expression1 -eq		expression2 True if the expressions are equal
	expression1 -ne		expression2 True if the expressions are not equal
	expression1 -gt		expression2 True if expression1 is greater than expression2
	expression1 -ge		expression2 True if expression1 is greater than or equal to
	expression2
	expression1 -lt		expression2 True if expression1 is less than expression2
	expression1 -le		expression2 True if expression1 is less than or equal to
	expression2
	! expression		True if the expression is false, and vice versa.


	File Conditional Result
	-----------------------
	-d file		 True if the file is a directory
	-e file		 True if the file exists. Note that historically the -e option has not been portable, so -f is usually used.
	-f file		 True if the file is a regular file
	-g file		 True if set-group-id is set on file
	-r file		 True if the file is readable
	-s file		 True if the file has nonzero size
	-u file		 True if set-user-id is set on file
	-w file		 True if the file is writable
	-x file		 True if the file is executable



Shell Control Statements:
------------------------

	control.sh: control statements.

while condition
do
	statements
done
While execute the statements until the condition FAILS.
until execute the statements until the condition SUCCESS.


Shell ERROR Handling:
--------------------
script-error.sh: Proper ERROR handling in shell.



Shell Debugging:
---------------
script7.sh: debugging in shell
	$ sh -x ./<script_name>






Functions in Shell: [ Example: functions.sh ]
-------------------

You can define functions in the shell.

To define a shell function, simply write its name followed by empty parentheses and enclose the statements in braces:


function_name () 
{
	echo $1
	statements
}

function_name 12


Export user defined environment variables: [ Example: export1.sh, export2.sh ]
-----------------------------------------
By default, variables created in a shell are not available in further (sub)shells invoked from that shell. 
The export command creates an environment variable from its parameter that can be seen by other scripts and programs invoked from the current program.

The commands set -a or set -allexport will export all variables thereafter.







Usage of Shell scripting:
------------------------
1. ping.sh: This shell shows Internet status.
2. server-monitor.sh: network monitor application show the below information 
	a OS name
	b. Architecture version
	c. Kernel version
	d. Internet status
	e. IP Address
	f. Memory Usage
	g. Disk file systems usage
	h. system uptime
3. km-bbb-kernel-build.sh: Environment Setup, Configure,Compilation of kernel source code.
4. km-bbb-kernel-install.sh: Installation of kernel source code.
  





Background Process vs foreground Process:
-----------------------------------------

	What is Process: 
	---------------
	Process is an execution of a program (or) is an instance of a program.

	Create a process:
	-----------------
	Command line interface [CLI] or Graphical interface [GUI].

	List of running process: 
	-----------------------
	$ ps -eaf

	Process Execution:
	----------------- 
	Foreground process [ Interactive Process ] and Background Process [ Non-Interactive Process / Daemon Process]


	Create a process in Foreground:
		$ gnome-calculator 

	Create a process in background [Daemon]
		$ gnome-calculator &


	List of background process:
		$ jobs

	Move process from bg ->  fg:
		$ fg 
	
	Move Particular process from bg -> fg:
		$ fg <job_id>

1. Write shell script that will add two nos, which are supplied as command line argument, and if this two nos are not given show error and its usage

2. Write Script to find out biggest number from given three nos. Nos are supplied as command line arguments. Print error if sufficient arguments are not supplied.

3. Write script to print given number in reverse order, for eg. If no is 123 it must print as 321

4. Write script to determine whether given file exist or not, file name is supplied as command line argument, Also check for sufficient number of command line arguments.

5. How to write script, that will print, Message ""Hello World"", in Bold and Blink effect, and in different Colors like red, brown etc using echo command."

6. Write a shell script that accepts a file name, starting and ending line numbers as arguments and displays all the lines between the given line numbers.

7. Write a shell script that deletes all lines containing a specified word in one or more files supplied as arguments to it.

8. Write a shell script that displays a list of all the files in the current directory to which the user has read, write and execute permissions.

9. Write a shell script that receives any number of file names as arguments checks if every argument supplied is a file or a directory and reports accordingly. Whenever the argument is a file, the number of lines on it is also reported.

10.Write a shell script that accepts a list of file names as its arguments, counts and reports the occurrence of each word that is present in the first argument file on other argument files.

11.Write a shell script to list all of the directory files in a directory.

12.Write a shell script to find factorial of a given integer.

Mini Project - shell programming:

Write a network monitor application server_monitor.sh which show the below information

OS name
Architecture version
Kernel version
Internet status
IP Address
Memory Usage
Disk file systems usage
system uptime


