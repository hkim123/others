#! /bin/bash
#This is STDIN(0), STDOUT(1), STDERR(2) description see book Chapter 15 page 396
#STDIN example, cat < file : this input is file
#STDOUT example, cat > file : All logs are going to file
#STDOUT example, cat >> file: All log append file
#redirect error
#ls -all badfile 2> file : all error going to file (value 2 is error value)
#ls -al 1>file : all output(not error) goingto file
ls -al std_in_out_err.sh badfile &> test8 #all error and output going to test8 

#all STDOUT going to testout
exec 2>testerror
echo "this is the start of the script"  
echo "Now redirecting all output to another location"  

#all error going to testerr
exec 1>testout
echo "this output should go to the testout file"
echo "but this should go to the testerror file" >&2 #this line goes to testerror file cause of >&2

#when you run ./std_in_out_err.sh 
#the display should be "this is the start of the script" and "Now redirecting all output to another location"
#when do 'cat testout' the display should be "this output should go to the testout file"
#when do 'cat testerror' the display should be "but this should go to the testerror file"
