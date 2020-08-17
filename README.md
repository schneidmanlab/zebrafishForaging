# zebrafishForaging
Code and data used in the publication: Harpaz, R., Schneidman, E. Social interactions drive efficient foraging and income equality in groups of fish. Elife (2020)

Data files: 

Data is in a MATLAB file format, and contain 3 files – fish1.mat, fish3.mat, fish6.mat
Each file contains a ‘data’ cell array of length n (number of fish/groups of fish) and each cell is  a single experiment. Each experiment is represented by a struct with the following fields:

x,y – position data (in pixels) of fish in the group. [n_fish x Time]

Speed – instantaneous speed (pixels/frame) of fish [n_fish x Time]

flake_xy  - positions (in pixels) of all flakes in the experiments. [n_flakes x position]

flake_app_diss_time – time (in frames) when a flake was detected by the camera and when it was disappeared (consumed). [n_flakes x 2, first columns – flake detected, second columns - flake consumed. 

consumption_times – time (in frames) of flake consumptions [n_flakes x 1]

border_x, border_y – positions (in pixels) of arena borders 

flakes_xy_for_sim – positions (in pixels) of flakes as a connected graph – where (sub)flakes are connected to a previous flake by position and time of appearance. [original flakes x (sub)flakes x position]. Entries in columns 2, 3.. are flakes that are connected (in time and space) to original flakes in columns 1. Zero entries represent no additional connected flakes. In simulations, after a flake in column 1 was consumed, the connected (sub)flake in column 2 will appear, etc’. 

Steps, Turns – cell array containing the segmented trajectories into discrete steps (in body lengths)  and turns (in degrees). [1 x n_fish]. Each cell is the data for one fish in the group.  

General variables for experiments: 
Frame rate = 50 fps
Average body length of a fish = 30 pixles
Arena diameter = 95 cm

The function plotTrajectories.m can be used to plot an animation of the search.

