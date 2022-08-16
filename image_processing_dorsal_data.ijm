run("Duplicate...", "title=lab_video.avi duplicate");
selectWindow("lab_video.avi");
run("Subtract Background...", "rolling=50 stack");
run("Morphological Filters (3D)", "operation=Gradient element=Cube x-radius=2 y-radius=2 z-radius=0");
selectWindow("lab_video-Gradient");
run("Auto Threshold", "method=Triangle white stack");
run("Morphological Filters (3D)", "operation=Erosion element=Cube x-radius=1 y-radius=1 z-radius=0");
selectWindow("lab_video-Gradient-Erosion");