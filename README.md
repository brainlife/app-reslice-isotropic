[![Abcdspec-compliant](https://img.shields.io/badge/ABCD_Spec-v1.1-green.svg)](https://github.com/brain-life/abcd-spec)
[![Run on Brainlife.io](https://img.shields.io/badge/Brainlife-brainlife.app.690-blue.svg)](https://doi.org/10.25663/brainlife.app.690)

# app-reslice-isotropic
This app will FSL's flirt command to resample T1w, T2w, or FLAIR acquistions into isotropic resolution. This is intended to be used for clinical datasets where where one plane might be high resolution and the others are low. This app will take in as input a clincal-grade T1w, T2w, or FLAIR sequence and resmaple to isotropic resolution, with voxel size based on user input, and output a corresponding isotropic iamge.

### Authors
- Brad Caron (bacaron@iu.edu)

### Contributors
- Franco Pestilli (frakkopesto@gmail.com)

### Funding 
[![NSF-BCS-1734853](https://img.shields.io/badge/NSF_BCS-1734853-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1734853)
[![NSF-BCS-1636893](https://img.shields.io/badge/NSF_BCS-1636893-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1636893)
[![NSF-ACI-1916518](https://img.shields.io/badge/NSF_ACI-1916518-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1916518)
[![NSF-IIS-1912270](https://img.shields.io/badge/NSF_IIS-1912270-blue.svg)](https://nsf.gov/awardsearch/showAward?AWD_ID=1912270)
[![NIH-NIBIB-R01EB029272](https://img.shields.io/badge/NIH_NIBIB-R01EB029272-green.svg)](https://grantome.com/grant/NIH/R01-EB029272-01)


### References

Jenkinson, M., Bannister, P., Brady, J. M. and Smith, S. M. Improved Optimisation for the Robust and Accurate Linear Registration and Motion Correction of Brain Images. NeuroImage, 17(2), 825-841, 2002.

Jenkinson, M. and Smith, S. M. A Global Optimisation Method for Robust Affine Registration of Brain Images. Medical Image Analysis, 5(2), 143-156, 2001.

Greve, D.N. and Fischl, B. Accurate and robust brain image alignment using boundary-based registration. NeuroImage, 48(1):63-72, 2009.

Avesani, P., McPherson, B., Hayashi, S. et al. The open diffusion data derivatives, brain data upcycling via integrated publishing of derivatives and reproducible open cloud services. Sci Data 6, 69 (2019). https://doi.org/10.1038/s41597-019-0073-y

## Running the App 

### On Brainlife.io

You can submit this App online at [https://doi.org/10.25663/brainlife.app.690](https://doi.org/10.25663/bl.app.690) via the "Execute" tab.

### Running Locally (on your machine)

1. git clone this repo.
2. Inside the cloned directory, create `config.json` with something like the following content with paths to your input files.

```json
{
        "input": "./input/t1/t1.nii.gz",
        "TYPE": "t1",
        "voxel_dim": 1
}
```

### Sample Datasets

You can download sample datasets from Brainlife using [Brainlife CLI](https://github.com/brain-life/cli).

```
npm install -g brainlife
bl login
mkdir input
bl dataset download --id 5b96bbf2059cf900271924f3 && mv 5b96bbf2059cf900271924f3 input/

```


3. Launch the App by executing `main`

```bash
./main
```

## Output

The main output of this app is a neuro/anat/t1w datatype.

#### Product.json
The secondary output of this app is `product.json`. This file allows web interfaces, DB and API calls on the results of the processing. 

### Dependencies

This App requires the following libraries when run locally.

  - singularity: https://singularity.lbl.gov/
  - jsonlab: https://github.com/fangq/jsonlab.git
