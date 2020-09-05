%Assignment -1
%Part-1
 imdata=imread('pic.png'); %reading image as matrix
  imshow(imdata) %displayingimage
%  store= figure(1); %saving image int store
%  saveas(store,'selfie.pdf'); %saving as pdf format

%Part-2
% grey_scale=rgb2gray(imdata);
% imshow(grey_scale)

%Part-3
%  grey_scale=rgb2gray(imdata);
%  p=grey_scale;
%  grey_scale=double(grey_scale);
%   subplot(1,1,1);
%  imshow(p);
%  store_gray_scale=figure(1);
% 
% bit_0=bitget(grey_scale,1);
% bit_1=bitget(grey_scale,2);
% bit_2=bitget(grey_scale,3);
% bit_3=bitget(grey_scale,4);
% bit_4=bitget(grey_scale,5);
% bit_5=bitget(grey_scale,6);
% bit_6=bitget(grey_scale,7);
% bit_7=bitget(grey_scale,8);
% 
% bit_planes_0to4=figure(2);
% subplot(1,4,1);
% imshow(bit_0);
% title('bit0');
% hold on
% 
% subplot(1,4,2);
% imshow(bit_1);
% title('bit1');
% 
% subplot(1,4,3);
% imshow(bit_2);
% title('bit2');
% 
% subplot(1,4,4);
% imshow(bit_3);
% title('bit3');
% hold off
% 
% bit_planes_5to8=figure(3);
% subplot(1,4,1);
% imshow(bit_4);
% title('bit4');
% hold on
% subplot(1,4,2);
% imshow(bit_5);
% title('bit5');
% 
% subplot(1,4,3);
% imshow(bit_6);
% title('bit6');
% 
% subplot(1,4,4);
% imshow(bit_7);
% title('bit7');
% hold off
% 
