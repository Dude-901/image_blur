close all
tic
img = imread('vandy.png');
% image address
blur_extent = 7;
% preferred values from 0-20, standard value = 7
output = blur(img,blur_extent);
imshow(output);
toc