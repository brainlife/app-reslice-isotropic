<h1 align="center">Reslice to Isotropic Voxel Dimensions using FSL</h1>

<p align="center">
  A T1- or T2-weighted image resampled to isotropic voxels of a chosen size with FSL FLIRT, for clinical scans with one high-resolution plane.
</p>

<p align="center">
  <a href="https://github.com/brainlife/abcd-spec"><img src="https://img.shields.io/badge/ABCD_Spec-v1.1-green.svg" alt="ABCD Spec v1.1"></a>
  <a href="https://doi.org/10.25663/brainlife.app.691"><img src="https://img.shields.io/badge/Brainlife-brainlife.app.691-blue.svg" alt="Run on brainlife.io"></a>
  <a href="https://github.com/brainlife/app-reslice-isotropic/blob/main/LICENSE"><img src="https://img.shields.io/badge/License-MIT-lightgrey.svg" alt="MIT license"></a>
</p>

> **This branch, `v1.0`, runs 2 brainlife.io Apps** that share the same code:
>
> - Reslice T2w to Isotropic Voxel Dimensions using FSL ([doi:10.25663/brainlife.app.691](https://doi.org/10.25663/brainlife.app.691))
> - Reslice T1w to Isotropic Voxel Dimensions using FSL ([doi:10.25663/brainlife.app.690](https://doi.org/10.25663/brainlife.app.690))
>
> The other Apps in this repository are listed under **Versions on brainlife.io** below.

## At a glance

<!-- brainlife-app:begin (generated from the App manifest; edit the manifest, not this block) -->

### Reslice T2w to Isotropic Voxel Dimensions using FSL

> **Reslices a T2-weighted image to isotropic voxels of a chosen size with FSL flirt -applyisoxfm, for clinical scans with one high-resolution plane.**

Runs FSL flirt with the image as its own reference and -applyisoxfm set to voxel_dim, writing output/t2.nii.gz. Intended for clinical-grade acquisitions where one plane is high resolution and the others are coarse. It only resamples; it does not register to another image.

| | |
|---|---|
| **Inputs** | `neuro/anat/t2w` |
| **Outputs** | `neuro/anat/t2w` |
| **Container** | `brainlife/fsl:6.0.4-patched2` |
| **Resources** | 1 CPUs · 1.5 h walltime |
| **Run it** | [doi.org/10.25663/brainlife.app.691](https://doi.org/10.25663/brainlife.app.691) |

#### Inputs

| Input | Datatype | Required | Description |
|---|---|---|---|
| `input` | `neuro/anat/t2w` | yes | T2-weighted image to reslice. |

#### Outputs

| Output | Datatype | Description |
|---|---|---|
| `output` | `neuro/anat/t2w` | The T2-weighted image resampled to isotropic voxels. |

<details>
<summary><b>Parameters</b> (2)</summary>

| Parameter | Type | Default | Description |
|---|---|---|---|
| `voxel_dim` | number | `1` | Isotropic voxel size of the output (passed to flirt -applyisoxfm). |
| `type` | string | `t2` | Name used for the output file (output/<type>.nii.gz); fixed to t2 for this App. |

</details>

### Reslice T1w to Isotropic Voxel Dimensions using FSL

> **Reslices a T1-weighted image to isotropic voxels of a chosen size with FSL flirt -applyisoxfm, for clinical scans with one high-resolution plane.**

Runs FSL flirt with the image as its own reference and -applyisoxfm set to voxel_dim, writing output/t1.nii.gz. Intended for clinical-grade acquisitions where one plane is high resolution and the others are coarse. It only resamples; it does not register to another image.

| | |
|---|---|
| **Inputs** | `neuro/anat/t1w` |
| **Outputs** | `neuro/anat/t1w` |
| **Container** | `brainlife/fsl:6.0.4-patched2` |
| **Resources** | 1 CPUs · 1.5 h walltime |
| **Run it** | [doi.org/10.25663/brainlife.app.690](https://doi.org/10.25663/brainlife.app.690) |

#### Inputs

| Input | Datatype | Required | Description |
|---|---|---|---|
| `input` | `neuro/anat/t1w` | yes | T1-weighted image to reslice. |

#### Outputs

| Output | Datatype | Description |
|---|---|---|
| `output` | `neuro/anat/t1w` | The T1-weighted image resampled to isotropic voxels. |

<details>
<summary><b>Parameters</b> (2)</summary>

| Parameter | Type | Default | Description |
|---|---|---|---|
| `voxel_dim` | number | `1` | Isotropic voxel size of the output (passed to flirt -applyisoxfm). |
| `type` | string | `t1` | Name used for the output file (output/<type>.nii.gz); fixed to t1 for this App. |

</details>

<!-- brainlife-app:end -->

## Versions on brainlife.io

Each App is registered separately on brainlife.io and runs the same code for a different anatomical datatype.

| App | FSL | Branch | Run it | Status |
|---|---|---|---|---|
| **Reslice T2w to Isotropic Voxel Dimensions using FSL** (this branch) | 6.0.4 | [`v1.0`](https://github.com/brainlife/app-reslice-isotropic/tree/v1.0) | [doi:10.25663/brainlife.app.691](https://doi.org/10.25663/brainlife.app.691) | current |
| **Reslice T1w to Isotropic Voxel Dimensions using FSL** (this branch) | 6.0.4 | [`v1.0`](https://github.com/brainlife/app-reslice-isotropic/tree/v1.0) | [doi:10.25663/brainlife.app.690](https://doi.org/10.25663/brainlife.app.690) | current |

## Running the App

### On brainlife.io

Open the T2w App at [doi.org/10.25663/brainlife.app.691](https://doi.org/10.25663/brainlife.app.691) or the T1w App at [doi.org/10.25663/brainlife.app.690](https://doi.org/10.25663/brainlife.app.690), choose the anatomical dataset from your project, set the voxel size (`voxel_dim`, in mm, default `1`) and press **Execute**. The result is a `neuro/anat/t2w` or `neuro/anat/t1w` dataset tagged `isotropic` and `resliced`, archived to your project.

The App is intended for clinical-grade acquisitions in which one plane is high resolution and the others are coarse. It runs FSL `flirt` with the image as its own reference and `-applyisoxfm <voxel_dim>`, so it only resamples the image; it does not register it to another image.

### Locally

You need [Singularity/Apptainer](https://apptainer.org/) and [`jq`](https://jqlang.github.io/jq/). FSL runs inside the `brainlife/fsl:6.0.4-patched2` container.

1. Clone this repository and check out the branch brainlife.io runs: `git checkout v1.0`.
2. Create `config.json` with the path to your image, the output name (`type`: `t1` or `t2`, used as `output/<type>.nii.gz`) and the voxel size:

   ```json
   {
       "input": "/input/t1/t1.nii.gz",
       "type": "t1",
       "voxel_dim": 1
   }
   ```

3. Run the App:

   ```bash
   ./main
   ```

### Sample data

Download a sample dataset from brainlife.io with the [brainlife CLI](https://github.com/brainlife/cli):

```bash
npm install -g brainlife
bl login
mkdir input
bl dataset download --id 5b96bbf2059cf900271924f3 && mv 5b96bbf2059cf900271924f3 input/
```

## Outputs

```text
output/
└── <type>.nii.gz   image resampled to isotropic voxels (t1.nii.gz or t2.nii.gz)
```

## Troubleshooting

- **`something went wrong`**: `flirt` did not write `output/<type>.nii.gz`. Check the log for the `flirt` error, and that `input` points to a readable NIfTI image.

## Citing

> [!TIP]
> If you use this App in your work, please cite the App, the software it builds on and brainlife.io (below). GitHub's **Cite this repository** button gives the App citation in APA and BibTeX.

- Jenkinson M, Bannister P, Brady JM, Smith SM. Improved optimisation for the robust and accurate linear registration and motion correction of brain images. *NeuroImage* 17(2):825–841 (2002).
- Jenkinson M, Smith SM. A global optimisation method for robust affine registration of brain images. *Medical Image Analysis* 5(2):143–156 (2001).
- Greve DN, Fischl B. Accurate and robust brain image alignment using boundary-based registration. *NeuroImage* 48(1):63–72 (2009).
- Reslice T2w to Isotropic Voxel Dimensions using FSL. brainlife.io App. [doi:10.25663/brainlife.app.691](https://doi.org/10.25663/brainlife.app.691)
- Reslice T1w to Isotropic Voxel Dimensions using FSL. brainlife.io App. [doi:10.25663/brainlife.app.690](https://doi.org/10.25663/brainlife.app.690)
- Jenkinson M, Bannister P, Brady JM, Smith SM. Improved Optimisation for the Robust and Accurate Linear Registration and Motion Correction of Brain Images. NeuroImage 17(2):825-841 (2002).
- Jenkinson M, Smith SM. A Global Optimisation Method for Robust Affine Registration of Brain Images. Medical Image Analysis 5(2):143-156 (2001).
- Greve DN, Fischl B. Accurate and robust brain image alignment using boundary-based registration. NeuroImage 48(1):63-72 (2009).
- Avesani P, McPherson B, Hayashi S, et al. The open diffusion data derivatives, brain data upcycling via integrated publishing of derivatives and reproducible open cloud services. Sci Data 6, 69 (2019). [doi:10.1038/s41597-019-0073-y](https://doi.org/10.1038/s41597-019-0073-y)
- Jenkinson et al. FSL. *NeuroImage* 62:782-790 (2012). [doi:10.1016/j.neuroimage.2011.09.015](https://doi.org/10.1016/j.neuroimage.2011.09.015)
- Hayashi S, Caron BA, Heinsfeld AS, et al. brainlife.io: a decentralized and open-source cloud platform to support neuroscience research. *Nature Methods* 21:809–813 (2024). [doi:10.1038/s41592-024-02237-2](https://doi.org/10.1038/s41592-024-02237-2)

## Authors

- Brad Caron

**Contributors:** Franco Pestilli

## Funding

[![Wellcome-226486/Z/22/Z](https://img.shields.io/badge/Wellcome-226486%2FZ%2F22%2FZ-purple.svg)](https://wellcome.org/)
[![NIH-NINDS-U24NS140384](https://img.shields.io/badge/NIH_NINDS-U24NS140384-green.svg)](https://reporter.nih.gov/project-details/11261037)
[![NIH-NINDS-UM1NS132207](https://img.shields.io/badge/NIH_NINDS-UM1NS132207-green.svg)](https://reporter.nih.gov/project-details/11411328)
[![NIH-NIBIB-R01EB029272](https://img.shields.io/badge/NIH_NIBIB-R01EB029272-green.svg)](https://reporter.nih.gov/project-details/10262925)
[![NIH-NIBIB-R01EB030896](https://img.shields.io/badge/NIH_NIBIB-R01EB030896-green.svg)](https://reporter.nih.gov/project-details/10428625)
[![NIH-NIMH-R01MH126699](https://img.shields.io/badge/NIH_NIMH-R01MH126699-green.svg)](https://reporter.nih.gov/project-details/10460628)
[![NIH-NIDCD-R01DC020088](https://img.shields.io/badge/NIH_NIDCD-R01DC020088-green.svg)](https://reporter.nih.gov/project-details/11140284)
[![NSF-BCS-1734853](https://img.shields.io/badge/NSF_BCS-1734853-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1734853)
[![NSF-BCS-2203524](https://img.shields.io/badge/NSF_BCS-2203524-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2203524)
[![NSF-IIS-1636893](https://img.shields.io/badge/NSF_IIS-1636893-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1636893)
[![NSF-OAC-2148729](https://img.shields.io/badge/NSF_OAC-2148729-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2148729)
[![NSF-IIS-1912270](https://img.shields.io/badge/NSF_IIS-1912270-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1912270)
[![NSF-IIS-2148700](https://img.shields.io/badge/NSF_IIS-2148700-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=2148700)
[![NSF-OAC-1916518](https://img.shields.io/badge/NSF_OAC-1916518-blue.svg)](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1916518)

<sub>brainlife.io is publicly funded, and acknowledging that support helps keep it running. This App was developed with support from Wellcome, the U.S. National Institutes of Health (including the BRAIN Initiative BRAIN CONNECTS program: The Axonal Projectome EXchange, U24NS140384, and the Center for Mesoscale Connectomics, UM1NS132207) and the U.S. National Science Foundation.</sub>

## License

[MIT](https://github.com/brainlife/app-reslice-isotropic/blob/main/LICENSE). FSL itself is distributed under its own [license](https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/Licence).
