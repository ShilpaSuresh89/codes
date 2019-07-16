%% Multilevel thresholding based on Chaotic Darwinian Particle Swarm Optimization 
%% for segmentation of satellite images (RGB images)
% fitness fn used: Otsu
%ShilpaSuresh,ShyamLal
%https://doi.org/10.1016/j.asoc.2017.02.005

tic;

I=imread('1.jpg');
NThresholds = 3; % no. of thresholds

[cI] = thresholdImageRGB(I,NThresholds); % Thresholded image
time=toc

imshow(cI)% Thresholded image
