E = vision.CascadeObjectDetector('EyePairBig');
I=imread('i.jpg');
BB=step(E,I);
figure,imshow(I);
rectangle('Position',BB,'LineWidth',4,'LineStyle','-','EdgeColor','b');
title('Eye Detection');
Eyes=imcrop(I,BB);
imwrite(Eyes,'e.png');
figure,imshow(Eyes);

a=Eyes(1:end,1:130);
a=Eyes(1:end,1:130,:);
imwrite(a,'c.jpg');
figure,imshow(a);
temp=imread('c.jpg');
temp1=imresize(temp,[300,400]);
imwrite(temp1,'temp1.jpg');
figure,imshow(temp1);


