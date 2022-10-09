clear all;
image1=imread('dog.jpg');
% I1 = imresize(image1, [1000, 1000]);
I1 = resize_(image1,1000,1000);
imwrite(I1,'dog_up.bmp');
I2= resize_(image1, 500, 500);
imwrite(I2,'dog_down.bmp')
imshow(image1);
figure
imshow(I1)
figure
imshow(I2)

