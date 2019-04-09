function [y,b,a]=moorer(x,cg,cg1,cd,ag,ad,k)
%This is a reverberator based on Moorer's design which consists of 6 parallel feedback comb filters 
%(each with a low pass filter in the feedback loop) in series with an all pass filter.
%
%The structure is:  [y,b,a] = moorer(x,cg,cg1,cd,ag,ad,k)
%
%where x = the input signal
%      cg = a vector of length 6 which contains g2/(1-g1) (this should be less than 1 for stability),
%           where g2 is the feedback gain of each of the comb filters and g1 is from the following parameter 
%      cg1 = a vector of length 6 which contains the gain of the low pass filters in the feedback loop of
%            each of the comb filters (should be less than 1 for stability)
%      cd = a vector of length 6 which contains the delay of each of the comb filters 
%      ag = the gain of the allpass filter (this should be less than 1 for stability)
%      ad = the delay of the allpass filter 
%      k = the gain factor of the direct signal
%      y = the output signal
%      b = the numerator coefficients of the transfer function
%      a = the denominator coefficients of the transfer function
%
%
% Gautham J. Mysore - gauthamjm@yahoo.com
%


% send the input to each of the 6 comb filters separately
[outcomb1,b1,a1] = lpcomb(x,cg(1),cg1(1),cd(1));
[outcomb2,b2,a2] = lpcomb(x,cg(2),cg1(2),cd(2));
[outcomb3,b3,a3] = lpcomb(x,cg(3),cg1(3),cd(3));
[outcomb4,b4,a4] = lpcomb(x,cg(4),cg1(4),cd(4));
[outcomb5,b5,a5] = lpcomb(x,cg(5),cg1(5),cd(5));
[outcomb6,b6,a6] = lpcomb(x,cg(6),cg1(6),cd(6));

% sum the ouptut of the 6 comb filters
apinput = outcomb1 + outcomb2 + outcomb3 + outcomb4 + outcomb5 + outcomb6; 

%find the combined filter coefficients of the the comb filters
[b,a]=parallelcoefficients(b1,a1,b2,a2);
[b,a]=parallelcoefficients(b,a,b3,a3);
[b,a]=parallelcoefficients(b,a,b4,a4);
[b,a]=parallelcoefficients(b,a,b5,a5);
[b,a]=parallelcoefficients(b,a,b6,a6);

% send the output of the comb filters to the allpass filter
[y,b7,a7] = allpass(apinput,ag,ad);

%find the combined filter coefficients of the the comb filters in series with the allpass filters
[b,a]=seriescoefficients(b,a,b7,a7);

% add the scaled direct signal
y = y + k*x;

% normalize the output signal
y = y/max(y);
