# JDMSR

This is the project site for our paper

Junkang Zhang, Cheolhong An, Truong Nguyen. <br>
**[Deep Joint Demosaicing and Super Resolution on High Resolution Bayer Sensor Data](https://ieeexplore.ieee.org/document/8646321)**. <br>
6th IEEE Global Conference on Signal and Information Processing (GlobalSIP), 2018. <br>

### Data

The url links to all RAW sensor data files are listed in `data/list_sigma_full_link.txt`. We do not provide the files directly due to lack of copyrights. Besides, you can also view those images from the following two links. <br>
https://www.photographyblog.com/reviews/sigma_sd_quattro_review/sample_images/ <br>
https://www.imaging-resource.com/PRODS/sigma-sd-quattro/sigma-sd-quattroGALLERY.HTM <br>

The other two files in `data/` defines the separation of training and test set as mentioned in our paper. 

#### Raw Data Extraction
**[X3F](https://github.com/kalpanika/x3f/releases)** can convert x3f files into DNG files. Then, raw data can be extracted from DNG files by different tools, e.g. Matlab. <br>
`x3f_to_dng.py` is a python script for x3f-to-dng conversion. <br>
`dng2mat.m` is a Matlab script to extract raw data from dng files and save as mat files. 

### Codes

To be uploaded. 
