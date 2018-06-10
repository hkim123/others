#! /bin/bash

## > means overright if file exist. 
## >> menas append not overright

today=$(date +%y%m%d)
dt=$(date +%y%m%d_%H%M%S)
ls /home/hankim -l > log.$today

date >> log.$today   

who > log.$dt

ls -lrt > ls.log
