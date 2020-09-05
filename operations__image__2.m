clear all
%Assignment -2
%Part-1
 imdata=imread('pic.png'); %reading image as matrix
 imshow(imdata) %displayingimage

 grey_scale=rgb2gray(imdata);
 subplot(1,1,1);
  imshow(grey_scale)
  title('Normal Grey-Scale Image');

%increase brightness
figure
subplot(2,1,1);
inc_bright=grey_scale+70;
imshow(inc_bright)
subplot(2,1,2);
imhist(inc_bright);
title('Increased brightness');


%decrease brightness
figure
subplot(2,1,1);
dec_bright=grey_scale-80;
imshow(dec_bright);
subplot(2,1,2);
imhist(dec_bright);
title('Decreased brightness');


%histogram stretching
figure
subplot(2,1,1);
inc_contrast=1.75*grey_scale;
imshow(inc_contrast)
subplot(2,1,2);
imhist(inc_contrast);
title('Increased contrast');

%histogram shrinking
figure
subplot(2,1,1);
dec_contrast=.5*grey_scale;
imshow(dec_contrast);
subplot(2,1,2);
imhist(dec_contrast);

title('Decreased contrast');


% histogram equalizsation
% function myfu(a)
% 
% r=size(grey_scale,1);
% c=size(grey_scale,2);
% fun=uint8(zeros(r,c));
% num_of_pixels=r*c;
% freq=zeros(256,1);
% pdf=zeros(256,1);
% cdf=zeros(256,1);
% cum=zeros(256,1);
% out=zeros(256,1);
% 
% for i=1:r
%     for j=1:c
%         val=a(i,j); %intesntiy of pixel
%         freq(val+1)=freq(val+1)+1;
%         pdf(val +1)=freq(val+1)/num_of_pixels;
%     end
% end
% suim=0;
% L=255;
% tum=0;
% for i=1:size(pdf)
%     
%     tum=tum+freq(i);
%     cum(i)=tum;
%     cdf(i)=cum(i)/num_of_pixels;
%     out(i)=round(cdf(i)*L);
% end
% 
% for i=1:r
%     for j=1:c
%         fun(i,j)=out(a(i,j)+1);
%     end
% end
% imshow(fun);
% 
% 
% end

figure
il=histeq(grey_scale);
imshow(il);

figure
ik=histeq(dec_bright);
imshow(ik);

figure
om=histeq(inc_bright);
imshow(om);

figure
qm=histeq(dec_contrast);
imshow(qm);





    




