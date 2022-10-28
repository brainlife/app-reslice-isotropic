#!/bin/bash

input=`jq -r '.input' config.json`
voxel_dim=`jq -r '.voxel_dim' config.json`
TYPE=`jq -r '.type' config.json`

[ ! -d output ] && mkdir -p output && outdir="./output"

[ ! -f ${outdir}/${type}.nii.gz ] && flirt -in ${input} -ref ${input} -out ${outdir}/${TYPE}.nii.gz -applyisoxfm ${voxel_dim}

[ -f ${outdir}/${type}.nii.gz ] && echo "complete" && exit 0 || echo "something went wrong" && exit 1
