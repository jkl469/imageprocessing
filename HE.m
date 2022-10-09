function [res,count_,re_count_] = HE(image)
count_ = count_num(image);
[r,c] = size(image);
res = zeros(r,c);
total_count = 0;
change_ = zeros(1,256);
for i= 1:256
    total_count = total_count + count_(i);
    p = total_count/r/c;
    change_(i) = ceil(p*255) ;%原图像灰度值i均衡化后的灰度值
end
%对原图像进行变换
for i=1:r
    for j= 1:c
        res(i,j) = change_(image(i,j)+1); %原图灰度值从0开始，存储下标从1开始
    end
end
re_count_ = count_num(res);
