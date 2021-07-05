#!/bin/bash
#####################################
# Alexandra Jansen van Rensburg
# Last modified 23/10/2018 15:27:00
####################################

# Script to summarise variant calls in bcf files as generated by 03a_variant_calling_bluecp3.sh
# outputs a raw combined variant file (.bcf) and a filtered file (.bcf) in the input folder. 
# Runs in a few minutes in the home directory (don't need to submit to Blue Crystal). 
# Estimated time: 2 minutes for 59 pheasant samples mapped to Gallus gallus genome. 


##Specify resources
#PBS -N 03b_Summary  ##job name
#PBS -l nodes=1:ppn=1  #nr of nodes and processors per node
#PBS -l mem=16gb #RAM
#PBS -l walltime=8:00:00 ##wall time.  
#PBS -j oe  #concatenates error and output files (with prefix job1)


##Work in current directory

/panfs/panasas01/bisc/aj18951/bristol-velocity/AJvR_VelocityPipeline/wrapper/03b_call_SNVs_summarize_bluecp3.sh \
-i /panfs/panasas01/bisc/aj18951/2a_WPA/03_variants -n 1 -flt -scov 0.4 -qs 20 -mindp 10 -maxdp 4000 -noindel -nomulti -nopriv;