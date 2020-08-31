sx = 30;
sy = 30;
img = zeros(sx,sy);
img(5,3)=1;
img(13,24) = 1;
save('test.jpg','img')