#!/bin/bash -l

#$ -P ubah  # SCC project name

#$ -N alphafold_multimer_cpu  #Job name

#$ -m ea #Send email when done or aborted

#$ -pe omp 32  # Request 8 CPU cores

#$ -l eth_speed=10  # Avoid slow nodes

#$ -l h_rt=12:00:00  # Adjust runtime as needed

#$ -j y  # Merge output/error logs



module load miniconda

module load alphafold/2.3.1



cd /projectnb/ubah/kimhun



# Run AlphaFold with all required parameters

run_alphafold.sh -d $SCC_ALPHAFOLD_DATABASE_PATH -o /projectnb/ubah/kimhun/output_multimer -p multimer -i /projectnb/ubah/kimhun/apoer2_reelin.fasta -f 


