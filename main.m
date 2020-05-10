% Simple image encryption algorithm using Bitxor
%-----------------------------------------------------------------------
 
% Demo:
% a=imread('image.png');

%---------------------------------------------------------
  % Enter your plain image here
   a=imread('');
   figure;
   imshow(a);title('Original image');
%---------------------------------------------------------
 % Calling encryption function:
  b=encryption(a);
  figure;
  imshow(b);title(' Encrypted image ');
 %--------------------------------------------------------
  c=decryption(b);
  figure;
  imshow(c);title(' Decrypted image ');
%-----------------------------------------------------------
 