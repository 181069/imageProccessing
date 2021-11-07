function [oneChannel] = discretizeColors(img,numColors)
height = size(img,1);
width = size(img,2);
oneChannel = zeros(height,width);
numOfBins = floor(256/numColors);
oneChannel = img;

for i=1:height
    for j=1:width
        oneChannel(i,j) = floor(oneChannel(i,j)/numOfBins)*numOfBins;
    end
end
imshow(oneChannel);

end