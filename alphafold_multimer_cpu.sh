#!/bin/bash -l
#$ -P ubah  # SCC project name
#$ -N alphafold_multimer_cpu  #Job name
#$ -m ea #Send email when done or aborted
#$ -pe omp 8  # Request 8 CPU cores
#$ -q academic-pub  # Use the general academic CPU queue
#$ -l eth_speed=10  # Avoid slow nodes
#$ -l h_rt=12:00:00  # Adjust runtime as needed
#$ -j y  # Merge output/error logs

module load miniconda
module load alphafold/2.3.1

cd /projectnb/ubah/kimhun

run_alphafold.sh -o /projectnb/ubah/kimhun/output_multimer -f -d $SCC_ALPHAFOLD_DATABASE_PATH --fasta_path=/projectnb/ubah/kimhun/apoer2_reelin.fasta --model_preset=multimer

