#!/bin/bash

#setup overall settings for how the code should be run
set -euo pipefail

#download file using curl
FASTQ_R1=subset-SRR11518889_1.fastq.gz
FASTQ_URL=https://raw.githubusercontent.com/AlexsLemonade/reproducible-research/main/instructor_notes/fastq_subset

#study id of interest
STUDY_ID="SRP255885"

#directory for fastq to be saved in
OUTDIR=../data/raw/fastq/${STUDY_ID}

#create OUTDIR directory
mkdir -p ${OUTDIR}

#fetch the files
echo "Retrieving file ${FASTQ_R1}"

curl -O ${FASTQ_URL}/${FASTQ_R1}

echo "How many lines"

gunzip -c ${FASTQ_R1} | wc -l

#move file to final destination
mv ${FASTQ_R1} ${OUTDIR}