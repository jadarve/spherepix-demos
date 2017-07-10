height = 768;
width = 1024;

R = 0:height -1;
C = 0:width -1;

[RR, CC] = meshgrid(R,C);

RR = reshape(RR, [1, height*width]);
CC = reshape(CC, [1, height*width]);

% convert pixel coordinate to sphere coordinates
M = cam2world([RR; CC], calib_data.ocam_model);

save('/media/jadarve/data/cameras/omnidirectional/sphereCoordinates.mat', 'M');

