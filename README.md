# Order-Parameter-of-Water
This repository contains the programs (both R and python) and workflow to calculate the nematic order parameter of water from simulation trajectory. 

1. The Finding_index.R	script finds the water atoms' indices inside a user specified region. The input is last2.csv which is a modified gro file. It will generate different index files (index1.csv, index2.csv .. ). 

Little modification is needed to these index files (see index1, index2 variable assignment in Order Parameter.IPYNB file). Excel and vim editor can do it easily.

These index files will be directly used to calculate the order parameter of the water. 

2. Order Parameter.IPYNB will calculate the order parameter as we supply them the index of the reigion. We can copy the modified indeces and the nematic order parameter will be calculated. 


