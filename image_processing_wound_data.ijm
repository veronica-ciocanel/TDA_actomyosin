new_window_name = "lab_video_test"
run("Duplicate...", "title=&new_window_name duplicate");
selectWindow(new_window_name); //create copy of video on which to perform operations
run("Conversions...", "scale weighted"); //use weighted grayscaling
run("8-bit");
run("Conversions...", "scale"); //reset settings to unweighted grayscale (may or may not work)
run("Remove Outliers...", "radius=2 threshold=50 which=Dark stack");
run("Despeckle", "stack");
run("Subtract Background...", "rolling=50 stack");
run("Morphological Filters (3D)", "operation=Opening element=Cube x-radius=2 y-radius=2 z-radius=0");
//for line 10, can also try setting radii to 1
run("Auto Threshold", "method=Intermodes white stack"); // uses Intermodes
//for fluorescent, use MaxEntropy, RemyEntrop, Triangle, or Yen (ME tested and preferred)
//run("Morphological Filters (3D)", "operation=Opening element=Cube x-radius=1 y-radius=1 z-radius=0");
//can remove noise again if still noisy