# Multi-Compartment-Segmentation-HPG

## For Multicompartment segmentation - inference 

1- Clone the following branch "hpg_prediction"

```
git clone -b hpg_prediction https://github.com/SarderLab/Multi-Compartment-Segmentation.git multicompartmentSegmentation
```

2- Inside ./multic/segmentationschool create the following

    a- Data directory ./data  (svs images)
    
    b- Output directory ./output
    
    c- Copy the slurm file slurm_predicting.sh

3- Update the directories and variables in the Slurm script to reflect the location of the model and sif

4- Run the slurm script

## For Reference Paper Feature Extraction 

1- Clone the following branch "add_reference_features"

```
git clone -b add_reference_features https://github.com/SarderLab/Multi-Compartment-Segmentation.git addReferenceFeatures
```

2- Inside ./multic/segmentationschool create the following

    a- Data directory ./data (svs xml paires)
    
    b- Output directory ./output
    
    c- Copy the slurm file slurm_ref_feature.sh

3- Update the directories and variables in the Slurm script to reflect the location of the model and sif

4- Run the slurm script
