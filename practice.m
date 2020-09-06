clear all
%Assignment -2
%Part-1
%  imdata=imread('pic.png'); %reading image as matrix
%  imshow(imdata) %displayingimage
%  title('RGB Image');

%   grey_scale=rgb2gray(imdata);
%  figure
%   imshow(grey_scale)
%   title('Normal Grey Scale Image');
% figure
%   imhist(grey_scale);
%   ylim([0 2000]);
% 
%   title('Histogram of Normal Grey-Scale Image');

%increase brightness
% figure

%  inc_bright=grey_scale+50;
 
% 
% imshow(inc_bright)
% title('Increased Brightness Image');
% figure
% imhist(inc_bright);
% ylim([0 2000]);
% 
% title('Histogram of Increased brightness Image');


%decrease brightness
% figure
% % 
 dec_bright=grey_scale-50;
% 
% imshow(dec_bright);
% title('Decreased Brightness Image');
% figure
% imhist(dec_bright);
%  ylim([0 2000])
% title('Histogram of Decreased brightness Image');


% %histogram stretching
% figure
% 
 inc_contrast=1.25*grey_scale;
% imshow(inc_contrast)
% title('Increased Contrast Image');
% figure
% imhist(inc_contrast);
% ylim([0 2000])
% title('Histogram of Increased contrast image');

% %histogram shrinking
%  figure
% 
%  dec_contrast=.5*grey_scale;
% imshow(dec_contrast);
% title('Decreased contrast image');
% 
% figure
%  
% 
% imhist(dec_contrast);
%  ylim([0 2000])
% 
% title('Histogram of Decreased contrast image');
% 
% 
% % histogram equalizsation
% % function myfu(a)
% % 
% % r=size(grey_scale,1);
% % c=size(grey_scale,2);
% % fun=uint8(zeros(r,c));
% % num_of_pixels=r*c;
% % freq=zeros(256,1);
% % pdf=zeros(256,1);
% % cdf=zeros(256,1);
% % cum=zeros(256,1);
% % out=zeros(256,1);
% % 
% % for i=1:r
% %     for j=1:c
% %         val=a(i,j); %intesntiy of pixel
% %         freq(val+1)=freq(val+1)+1;
% %         pdf(val +1)=freq(val+1)/num_of_pixels;
% %     end
% % end
% % suim=0;
% % L=255;
% % tum=0;
% % for i=1:size(pdf)
% %     
% %     tum=tum+freq(i);
% %     cum(i)=tum;
% %     cdf(i)=cum(i)/num_of_pixels;
% %     out(i)=round(cdf(i)*L);
% % end
% % 
% % for i=1:r
% %     for j=1:c
% %         fun(i,j)=out(a(i,j)+1);
% %     end
% % end
% % imshow(fun);
% % 
% % 
% % end
% 
% figure
% hold on
% il=histeq(grey_scale);
% title('Processed Grey Scale Image');
% 
% imshow(il);
% figure
% imhist(il);
% ylim([0 4000])
% title('Histogram of Processed Image GreyScale Image');
% hold off
% % 
% figure
% ik=histeq(dec_bright);
% hold on
% 
% imshow(ik);
% title('Processed Decreassed Brightness Image');
% figure
% imhist(ik);
% ylim([0 4000])
% title('Histogram of Processed DecreasedBrightness Image');
% 
% figure
% om=histeq(inc_bright);
% 
% imshow(om);
% title('Processed Increased Brightness Image');
% figure
% imhist(om);
% ylim([0 4000])
% title('Histogram of Processed IncreasedBrightness Image');

% figure
% qm=histeq(dec_contrast);
% 
% imshow(qm);
% title(' Processed Decreased Contrast Image');
% figure
% imhist(qm);
% title('Histogram of Processed  Decreased Contrast Image');
% ylim([0 4000])

% figure
% qm=histeq(inc_contrast);
% 
% imshow(qm);
% title(' Processed Increased Contrast Image');
% figure
% imhist(qm);
% title('Histogram of Processed  Increased Contrast Image');
% ylim([0 4000])
