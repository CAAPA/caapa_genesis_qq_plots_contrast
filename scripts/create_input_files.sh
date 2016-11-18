#!/bin/bash


#GENESIS balanced cohorts
cut -f4,9 /gpfs/barnes_share/dcl01_data_aniket/data/CAAPA_jhuGRAAD_BDOS_032416/JHU_GRAAD/imputed/GENESIS/allchr_output_genesis_info_clean.txt | sed 's/Score.pval/PVALUE/' > ../data/input/genesis/GRAAD.txt
cut -f4,9 /gpfs/barnes_share/dcl01_data_aniket/data/CAAPA_jhuGRAAD_BDOS_032416/CHICAGO/imputed/GENESIS/allchr_output_genesis_info_clean.txt | sed 's/Score.pval/PVALUE/' > ../data/input/genesis/CAG.txt
cut -f4,9 /gpfs/barnes_share/dcl01_data_aniket/data/CAAPA_jhuGRAAD_BDOS_032416/UCSF_SF/imputed/GENESIS/allchr_output_genesis_info_clean.txt | sed 's/Score.pval/PVALUE/' > ../data/input/genesis/SAGE.txt
cut -f4,9 /gpfs/barnes_share/dcl01_data_aniket/data/CAAPA_jhuGRAAD_BDOS_032416/UCSF_PR/imputed/GENESIS/allchr_output_genesis_info_clean.txt | sed 's/Score.pval/PVALUE/' > ../data/input/genesis/GALA.txt

#GENESIS unbalanced cohorts
cut -f4,9 /gpfs/barnes_share/dcl01_data_aniket/data/CAAPA_jhuGRAAD_BDOS_032416/JHU_ABR/imputed/GENESIS/allchr_output_genesis_info_clean.txt | sed 's/Score.pval/PVALUE/' > ../data/input/genesis/BRIDGE.txt
cut -f4,9 /gpfs/barnes_share/dcl01_data_aniket/data/CAAPA_jhuGRAAD_BDOS_032416/JACKSON_ARIC/imputed/GENESIS/allchr_output_genesis_info_clean.txt | sed 's/Score.pval/PVALUE/' > ../data/input/genesis/ARIC.txt
cut -f4,9 /gpfs/barnes_share/dcl01_data_aniket/data/CAAPA_jhuGRAAD_BDOS_032416/JACKSON_JHS/imputed/GENESIS/allchr_output_genesis_info_clean.txt | sed 's/Score.pval/PVALUE/' > ../data/input/genesis/JHS.txt
cut -f4,9 /gpfs/barnes_share/dcl01_data_aniket/data/CAAPA_jhuGRAAD_BDOS_032416/WINSTON_SALEM/imputed/GENESIS/allchr_output_genesis_info_clean.txt | sed 's/Score.pval/PVALUE/' > ../data/input/genesis/SARP.txt
cut -f4,9 /gpfs/barnes_share/dcl01_data_aniket/data/CAAPA_jhuGRAAD_BDOS_032416/WASHINGTON/imputed/GENESIS/allchr_output_genesis_info_clean.txt | sed 's/Score.pval/PVALUE/' > ../data/input/genesis/NIH.txt


#EMMAX balanced cohorts
cut -f4,6 /gpfs/barnes_share/caapa_metal/data/input/jhu_650y.txt > ../data/input/emmax/GRAAD.txt
cut -f4,6 /gpfs/barnes_share/caapa_metal/data/input/chicago.txt > ../data/input/emmax/CAG.txt
cut -f4,6 /gpfs/barnes_share/caapa_metal/data/input/ucsf_sf.txt > ../data/input/emmax/SAGE.txt
cut -f4,6 /gpfs/barnes_share/caapa_metal/data/input/ucsf_pr.txt > ../data/input/emmax/GALA.txt

#PLINK unbalanced cohorts
cut -f4,6 /gpfs/barnes_share/caapa_metal/data/input/jhu_abr.txt > ../data/input/plink/BRIDGE.txt
cut -f4,6 /gpfs/barnes_share/caapa_metal/data/input/jackson_aric.txt > ../data/input/plink/ARIC.txt
cut -f4,6 /gpfs/barnes_share/caapa_metal/data/input/jackson_jhs.txt > ../data/input/plink/JHS.txt
cut -f4,6 /gpfs/barnes_share/caapa_metal/data/input/winston_salem.txt > ../data/input/plink/SARP.txt
