% This code is used to extract desired frames from a video.

clear;clc
obj = VideoReader('E:\MVI_0001.MP4'); % input the video to MATLAB; The path of the video should be specified here.
numFrames = obj.NumberOfFrames; % Get the total number of frames of this input video 
 for k =1:1:200 % Here, the range of frames that need to be extracted should be specified
      frame = read(obj,k); % read the desired frame
      imwrite(frame,strcat('E:\1\',num2str(k),'.bmp'),'bmp'); % Here, the location for saving the frame and the format should be specified
 end
% end of extracting frames