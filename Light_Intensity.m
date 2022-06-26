%%%% This code is used to calculate the light intensity based on grayscales.

clear;clc
pathname='E:\9737\'; %%% This is to specify the folder path
light_intensity=zeros(1,1); %%% This is to initialize the matrix for storaging light intensity
x=1;

for a=1:1:100 %%% This is to specify the range of inputting images
    
x0=1000;  % x coordinate of the selected area for calculating the light intensity
y0=800;   % y coordinate of the selected area for calculating the light intensity

w0=451;   % width of the crop
h0=1155;  % height of the crop

filename=num2str(a);
name_all=strcat(pathname,filename,'.BMP'); % This is to get the full name of the image
RGB=imread(name_all); % This is to input the RGB image into MATLAB
[height,width,dimen]=size(RGB); % This is to get the dimensions of the RGB image
RRGB=imcrop(RGB,[x0,y0,w0,h0]); % This is to crop the RGB image
figure(1) % This is to show the cropped RGB image
imshow(RRGB);

I=rgb2gray(RGB); % This is to convert the original RGB image into grayscale format
imCpR=imcrop(I,[x0,y0,w0,h0]); % This is to crop the grayscale format image
figure (2) % This is to show the cropped grayscale image
imshow(imCpR);

ele_max=max(max(imCpR)); % This is to get the maximum grayscale within the cropped grayscale image

ele_all=numel(imCpR); % This is to get the total number of pixels within the cropped grayscale image
gray_all=sum(sum(imCpR)); % This is to get the sum of grayscales within the cropped grayscale image
gray_ave=gray_all/ele_all; % This is to get the average grayscales within the cropped grayscale image


light_intensity(x)=gray_ave; % The light intensity is defined as the average grayscales within the cropped grayscale image
x=x+1;

end
plot(light_intensity)



