#!/bin/sh 
#SBATCH --account=pinaki.sarder 
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --job-name=FeatEx
#SBATCH --output=out_log_ref.log
#SBATCH --cpus-per-task=7
#SBATCH --mem-per-cpu=16gb
#SBATCH --time=72:00:00
#SBATCH --partition=gpu
#SBATCH --gpus=geforce

# Add your userID here:
USER=ahmed.naglah

PROJECT=RefFeatureExtraction

ROOTDIR=/orange/pinaki.sarder/ahmed.naglah/codes/multic/addReferenceFeatures/multic/segmentationschool
DATA_DIR=$ROOTDIR/datafolder
OUTPUT_DIR=$ROOTDIR/output

SIFDIR=/orange/pinaki.sarder/shared_singularity_files
CONTAINER=$SIFDIR/multic_segment.sif

singularity exec $CONTAINER python3 -m pip install --user XlsxWriter
singularity exec --nv -B $(pwd):/exec/,$DATA_DIR/:/data,$OUTPUT_DIR/:/model/ $CONTAINER python3 /exec/segmentation_school.py --option get_features --platform HPG --base_dir $DATA_DIR --output_dir $OUTPUT_DIR