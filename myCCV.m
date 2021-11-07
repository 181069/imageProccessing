function [CVR, CVG, CVB]= myCCV(imgPath,numOfColors,threshold)
rgbIMG = imread(imgPath);
[Rb,Gb,Bb] = BlurAndDivideChannels(rgbIMG,3);
[RChannel] = discretizeColors(Rb,numOfColors);
[GChannel] = discretizeColors(Gb,numOfColors);
[BChannel] = discretizeColors(Bb,numOfColors);
CVR =CCV( RChannel , threshold);
CVG=CCV( GChannel , threshold);
CVB=CCV( BChannel , threshold);
end

