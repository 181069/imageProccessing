function final_CC = gray_connected_components(imq)
mn=min(imq(:));
mx=max(imq(:));
final_CC=zeros(size(imq));
cc_inc=0;
for i=mn:mx
    temp_BW=imq==i;
    CC = bwlabel(temp_BW);
    CC=CC+(CC>0)*cc_inc;
    final_CC=final_CC+CC;
    cc_inc=max(final_CC(:));
end