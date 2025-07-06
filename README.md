# eventtriggersystem
This Simulink model was created using MATLAB version 2023b. To open and run the file, MATLAB 2023b or a newer version is required.

The Simulink model was developed to control the AR.Drone produced by Parrot. 
Please note that files required to establish a direct connection between MATLAB and the actual drone are not included due to copyright restrictions. 
To run the system with your drone, you will need to prepare the corresponding .prj file or connection blocks compatible with your hardware setup.

This Simulink model and the accompanying MATLAB script (.m file) were designed based on an event-triggered controller.

The Simulink output variables should be saved as:
- `z`, `phi`, `theta`, `psi` for position and attitude states
- `uz`, `uphi`, `utheta`, `upsi` for the corresponding control inputs

Once these variables are saved, you can execute the provided `.m` script to generate the analysis results and plots. 
If you prefer to use different variable names, please modify the corresponding lines in the `.m` script accordingly before running.
