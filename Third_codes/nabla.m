% clear old vairables
clear all;
close all;
clc;

% load data, please change it for your image
filename='data/birds.bmp';
[filepath,name,ext]=fileparts(filename);
im=im2double(imread([filepath,'/',name,ext]));
Nabla = get_nabla(im);
figure;imshow(Nabla);