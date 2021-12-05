clear all;
close all;
clc;

filename='data/3.bmp';
[filepath,name,ext]=fileparts(filename);
im=im2double(imread([filepath,'/',name,ext]));
im = im(:,:,1:3);
addpath(genpath('Third_codes'));

[I,R]=spcv22(im);

% Show results
hsv=rgb2hsv(im);
figure(1);
subplot(2,2,3);imshow(I);title('Illumination (Gray)');
hsv(:,:,3) = R;
subplot(2,2,4);imshow(hsv2rgb(hsv),[]);title('Reflectance');
reflectance=hsv2rgb(hsv);
subplot(2,2,1);imshow(im);title('Input');

% Enhanced images
gamma=2.2;
hsv=rgb2hsv(im);
I_gamma=real(I.^(1/gamma));
S_gamma=R .* I_gamma;
hsv(:,:,3)=S_gamma;
enhance = hsv2rgb(hsv);
subplot(2,2,2);imshow(enhance);title('Enhanced image');
