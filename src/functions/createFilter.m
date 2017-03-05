function [ MASK, MASK2 ] = createFilter(img, diameter)


imgSz = size(img); % read in image size
rowLength = imgSz(1,1); % M length
colLength = imgSz(1,2); %N length

length = rowLength/2; 
width = colLength/2; 
[x, y] = meshgrid(-width:width-1,-length:length-1); %meshgrid based on mxn

MASK = (x/(length*diameter)).^2+(y/(width*diameter)).^2>=1; %MY MASK which draws a circle and puts 0's in it. This will filter the undesired freq components. 

MASK2 = (x/(length*diameter)).^2+(y/(width*diameter)).^2<=1; %This second mask will only keep the values in the center, meaning 1's everywhere in the circle and 0 elsewhere
end

