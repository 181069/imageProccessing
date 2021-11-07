function [Rb,Gb,Bb] = BlurAndDivideChannels(RGBimg,blurFactor)
 R = RGBimg(:,:,1); % Red channel
 G = RGBimg(:,:,2); % Green channel
 B = RGBimg(:,:,3); % Blue channel
 Rb = imgaussfilt(R,blurFactor);
 Gb = imgaussfilt(G,blurFactor);
 Bb = imgaussfilt(B,blurFactor);
end