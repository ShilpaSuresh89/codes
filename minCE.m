%**************************************************************************
%**************************************************************************
%   
% MinCE is a function for thresholding using Minimum Cross Entropy
% The code calculates
% 
% input = I ==> Image in gray level 
% output =
%           I1 ==> binary image
%           threshold ==> the threshold choosen by MinCE
%  
% F.Gargouri
%
%
%**************************************************************************
%**************************************************************************

function CE=minCEtest(x,hn)
x=[1 (x+1) 256];
n=length(x);
for i=1:n-1
m0=0;
m1=0;
    for t=x(i):x(i+1)-1
    m0=m0+hn(t);
    m1=m1+t*hn(t);
    end
entropy(i)=m1*log(m1/m0);
end
eta=-sum(entropy);
CE=-eta;

   
   

    