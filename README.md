QWRAP
=====

Quick Microbiome data analysis pipeline. QWRAP is a set of scripts written in bash, perl, pyhton and R. The scripts creates a workflow which helps in quick analysis of 16S microbiome data. The script act as a wrapper over publically available tools like FASTQC, FASTX, QIIME, PERL, R to achieve the task.

INSTALLATION
-----
Requirements : QWRAP is heavily dependent on QIIME package. Please go through the manual for QIIME installation (http://qiime.org/install/index.html). QWRAP needs other programs like FASTQC, FASTX to peform data quality check and quality filtering.
QWRAP can be installed only on LINUX. Installation requires that all the scripts are copied to a certain location on a computer and the location of script is included in the PATH.

* Download : ```git clone git://github.com/QWRAP/QWRAPv3.git```
* Install : Just add the path of the QWRAP folder to your environment. Ex. if absolute path for the QWRAP folder is ```/home/username/QWRAP```
then execute the following command ```export PATH=${PATH}:/home/username/QWRAP``` to add path for this session or you can add the export command to file ".bashrc" in your home directory for all time ( you must logout and re-login to make it effective)


USAGE AND EXAMPLE
-----
* How to use QWRAP : The detailed instructions are present in word document file "QWRAP-Readme.docx"
* Example raw data : An example single end raw dataset is provided as "rawdata_se.tar.gz"
* Example results : The results generated after processing using QWRAPv3 is provided as "results_se.tar.gz"
* Browse Live : A copy of example dataset ia also available for live browing at https://dl.dropboxusercontent.com/u/428435/QWRAP/ANALYSIS/microbiome_report.html.

# QWRAPv3
