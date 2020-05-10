% Simple image encryption algorithm using Bitxor
%------------------------------------------------------------------------
function out=encryption(a)
%a=imread('airplane.png');
% Decomposing in to R,G,B
%---------------------------------------------------------
 R=a(:,:,1);
 G=a(:,:,2);
 B=a(:,:,3);
%---------------------------------------------------------
    R = reshape(R,[1,65536]);
    G = reshape(G,[1,65536]);
    B = reshape(B,[1,65536]);
    
    r=double(R);
    g=double(G);
    b=double(B);
 %--------------------------------------------------------
    for i=1:65536
        r(i)=mod((double(bitxor(r(i),i*23))),256);
        g(i)=mod((double(bitxor(g(i),i.^2*r(i)))),256);
        b(i)=mod((double(bitxor(b(i),i.^2*g(i)))),256);
        
    end
    
    p3=uint8(r);
    q3=uint8(g);
    s3=uint8(b);
    
    p3 = reshape(p3,[256,256]);
    q3 = reshape(q3,[256,256]);
    s3 = reshape(s3,[256,256]);
%-----------------------------------------------------------
% Output

    k=cat(3,p3,q3,s3);
    
   out=k;
end
   
        
    
    
    
    
   