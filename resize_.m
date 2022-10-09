function [image2] = resize_(t,h,l)
[r,c,z]=size(t);
image2 = zeros(h,l,3);
image2 = uint8(image2);
for dim= 1: z
    for x = 1: h
        for y= 1 : l
            u = x*r/h - floor(x*r/h );
            v = y*c/l - floor(y*c/l );
            x_floor = floor(x*r/h); y_floor = floor(y*c/l);
            if x_floor<1
                x_floor =1;
            end
            if y_floor<1
                y_floor =1;
            end
            image2(x,y,dim) = (1-u)*(1-v)*t(x_floor ,y_floor,dim) +  u*(1-v)*t(ceil(x*r/h) ,y_floor,dim)  +   (1-u)*v*t(x_floor,ceil(y*c/l),dim)  +   u*v*t(ceil(x*r/h) ,ceil(y*c/l ),dim);
        end
    end
end

%floor 向下去整，ceil上取整