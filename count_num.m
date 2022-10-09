function [count_]=count_num(t) 
[r,c] = size(t);
count_ = zeros(1,256);
for i=1:r
    for j= 1:c
        count_(t(i,j)+1)=count_(t(i,j)+1)+1;
    end
end