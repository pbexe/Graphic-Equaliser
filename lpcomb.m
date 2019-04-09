function [y,b,a]=lpcomb(x,g,g1,d)

%This is a feedback comb filter with a low pass filter in the feedback.
%
%The structure is:  [y,b,a] = lpcomb(x,g,g1,d)
%
%where x = the input signal
%      g = g2/(1-g1), where g2 is the feedback gain of the comb filter (this should be less than 1 for stability)
%      g1 = the feedback gain of the low pass filter (this should be less than 1 for stability)
%      d = the delay length
%      y = the output signal
%      b = the numerator coefficients of the transfer function
%      a = the denominator coefficients of the transfer function
%
%
% Gautham J. Mysore - gauthamjm@yahoo.com
%


%If g is more than 1, set it to 0.7 .
if g>=1
   g=0.7;
end   

%If the low pass feedback gain is more than 1, set it to 0.7 .
if g>=1
   g=0.7;
end   

%Set the b and a coefficients of the transfer function depending on g, g1 and d.
b=[zeros(1,d) 1 -g1];
a=[1 -g1 zeros(1,d-2) -g*(1-g1)];

%filter the input signal 
y=filter(b,a,x);
