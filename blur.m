%   This function is used to blur an image pixel-by-pixelreplacing each
%   pixel value eith the mean of its
%   neighbouring pixel matrix of size 2*w+1
%   You can use the test program to see how the function actually works
%   -------------------------------------------------------------------
%   img = 255*ones(5,'uint8');
%   img(2:4,2:4)=0
%   img2=blur(img,1);
%   -------------------------------------------------------------------
function output = blur(img,w)
%     output=zeros(size(img));
     [a,b]=size(img);
     output=zeros(a,b);
    for i=1:a
        for j=1:b
            c=i-w;
            d=i+w;
            e=j-w;
            f=j+w;
            if i<=w
                c=1;
            end
            if i+w>=a
                d=a;
            end
            if j<=w
                e=1;
            end
            if j+w>=b
                f=b;
            end
            m=img(c:d,e:f);
            output(i,j)=mean(m(:));
%             Earlier used algorithm used to take mean(mean()) of the
%             output vector but it was taking time as much as twice as
%             compared to this method which I learned from the solution
%             provided after the submission of the program. However Both
%             provides the same answer, time taken is reduced because now
%             mean in called only once.
%             Earlier expression:
%             -----------------------------------------------------------
%             output(i,j)=mean(mean(img(c:d,e:f)));
%             -----------------------------------------------------------
        end
    end
    output=uint8(output);
end