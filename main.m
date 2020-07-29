% Simple image encryption algorithm using Bitxor
%--------------------------------------------------------------------------------------------------------------------------------------
% Note: If you are using my code for your system or project, you should always cite my paper as a reference. 
web('https://docs.google.com/document/d/1AbCxFoUhdOCppM8novgCdOv0F9mqYe7HlBU7yX7Svx0/edit?usp=sharing')
web('published_work.html')
%---------------------------------------------------------------------------------------------------------------------------------------

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
 
