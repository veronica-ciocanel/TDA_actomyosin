# TDA_actomyosin

Sample code for image analysis and construction of significant topological paths corresponding to the time evolution of 1-dimensional holes (actin-myosin ring channels) in point cloud or binary image datasets. 

This code accompanies a preprint on "Characterizing emerging features in cell dynamics using topological data
analysis methods" by Dawson, Dudley, Omoma, and Ciocanel.

We provide:
- Sample ImageJ processing macros for cleaning and extracting images from fluorescence imaging videos of protein dynamics.
- Sample Python code for compression and sampling of point clouds corresponding to fluorescent pixels from the extracted images.
- Sample dataset for the x, y locations of fluorescent proteins from a control/wild-type video of dorsal closure in the Drosophila fruit fly (see reference [1]).
- Sample dataset for the x, y pixel locations of fluorescent proteins from a control/wild-type video of a wound-induced contractile ring in the Xenopus oocyte (see reference [2]).
- Files with pre-computed lists of birth-death pairs corresponding to 1-dimensional topological features obtained using computation of the persistent homology of these datasets. The Vietoris-Rips filtration (using the Ripser package in Python, see reference [3]) was used for the dorsal closure data, and the flooding filtration (using the Python computational framework from reference [4]) was used for the wound healing data.
- Jupyter notebook files that reproduce the persistent homology computation, connection through time, and visualization of the significant 1-dimensional hole paths through time in these datasets. All necessary auxiliary functions are included. Matching of persistence diagrams using the Wasserstein distance are carried out using the GUDHI library in Python (see reference [5]).


[1] R. D. Mortensen, R. P. Moore, S. M. Fogerson, H. Y. Chiou, C. V. Obinero, N. K. Prabhu, A. H. Wei, J. M. Crawford and D. P. Kiehart, Supplemental material for Mortensen et al., 2018. GSA journals. Dataset., https://doi.org/10.25387/g3.6207470.v2, 2018.

[2] C. A. Mandato and W. M. Bement, Contraction and polymerization cooperate to assemble and close actomyosin rings around Xenopus oocyte wounds, The Journal of cell biology, 154 (2001), 785–79

[3] Tralie C, Saul N, Bar-On R. Ripser.py (2018): A lean persistent homology library for Python. Journal of Open Source Software. 2018 Sep 13;3(29):925. Software available at https://github.com/scikit-tda/Ripser.py

[4] GitHub, Code for "Topological data analysis distinguishes parameter regimes in the Anderson-Chaplain model of angiogenesis" by John Nardini, Bernadette Stolz, Kevin Flores, Heather Harrington, and Helen Byrne, https://github.com/johnnardini/Angio_TDA, 2020

[5] Maria C, Boissonnat JD, Glisse M, Yvinec M (2014). The GUDHI library: Simplicial complexes and persistent homology. In: International Congress on Mathematical Software, Springer, pp 167–174
