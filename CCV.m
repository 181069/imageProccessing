
function retval = CCV(im,thresh)

%find connected component
final_CC = gray_connected_components(im);
%size of image
n = size(im,1);
m = size(im,2);

connected = final_CC;
groupC = max(max(final_CC));
levels = max(max(im))+1;
t1 = zeros([2 groupC]);

%creare table one that contain the color snd the size of thst color
for i=1:n
    for j=1:m
        indx = final_CC(i,j);
        t1(2,indx) = t1(2,indx) + 1;
        t1(1,indx) = im(i,j);
    end
end

[s,r] = size(t1);
retval = zeros(2 ,levels);

for i = 1 : r
    if(t1(1,i)== 0 )
        t1(1,i)= 1;
    end
end
for i = 1 : r
    freq = t1(2,i);
    if freq == 0
        continue
    end
    if (freq > thresh)
        
        retval(1, t1(1,i)) = freq + retval(1, t1(1,i));
        
    else
        retval(2, t1(1,i)) = freq + retval(2, t1(1,i));
    end
    
    
    
end