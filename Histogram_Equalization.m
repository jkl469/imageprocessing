% count_ = zeros(1,256);
% re_count_ = count_;
%计数、统计出现概率
% [r,c] = size(image1);
% for i=1:r
%     for j= 1:c
%         count_(image1(i,j)+1)=count_(image1(i,j)+1)+1;
%     end
% end

%均衡化
% total_count = 0;
% change_ = zeros(1,256);
% for i= 1:256
%     total_count = total_count + count_(i);
%     p = total_count/r/c;
%     change_(i) = ceil(p*255) ;%原图像灰度值i均衡化后的灰度值
% end
% %对原图像进行变换
% for i=1:r
%     for j= 1:c
%         image1(i,j) = change_(image1(i,j)+1); %原图灰度值从0开始，存储下标从1开始
%     end
% end
clear all;
image1=imread('pic2.png');
[res(:,:,1),count_,re_count_] = HE(image1(:,:,1));
[res(:,:,2)] = HE(image1(:,:,2));
[res(:,:,3)] = HE(image1(:,:,3));
subplot(1,2,1);
imshow(image1);
subplot(1,2,2);
imshow(uint8(res));
figure;
subplot(1,2,1);
plot(count_) ;
xlim([0 255]);
ylim('auto');
subplot(1,2,2);
plot(re_count_);
xlim([0 255]);
ylim('auto');