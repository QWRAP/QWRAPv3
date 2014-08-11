
#-------------------------------------------------------------------------
# Name - processall.sh
# Desc - The program processes files (some genral steps) in serial order 
# Author - Ranjit Kumar (ranjit58@gmail.com)
#-------------------------------------------------------------------------

# Run the program as
# processall.sh RUN_NAME
# Example :  processall.sh R16


# READING PATH for RAW data
RUN_NAME="$1"

echo -e "\nEntering into directory ${RUN_NAME}_analysis ...\n"

if [ ! -e ${RUN_NAME}_analysis ]
then
  echo -e "ERROR : FOLDER containing the run analysis ${RUN_NAME}_analysis is not found"
  echo -e "\nPlease run the program as \nprocessall.sh RUN_NAME"
  echo -e "\nTerminating the program...\n"
exit
fi


cat <<EOF >process.job
#$ -S /bin/bash
#$ -cwd
#$ -N process
#$ -l h_rt=24:00:00,s_rt=24:00:00,vf=4G
#$ -M rkumar@uab.edu
#$ -m eas


# Enter into run folder
cd ${RUN_NAME}_analysis

for i in *
 do
   cd \$i
   mkdir ANALYSIS
   cd ANALYSIS
   quality_check_before.sh ../FORWARD/ ../REVERSE/
   merge_reads_F_R.sh ../FORWARD/ ../REVERSE/
   prepare_merge_fastq.sh TEMP/
   merge_fastq.sh Paired_Filelist.txt 250 250 15 200
   quality_filter_single.sh MERGED_FASTQ 250 80 20
   quality_check_filterdata.sh filtered_fastq
   rm -r TEMP/
   cd ..
   cd ..
 done
EOF
