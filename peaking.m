function [b, a]  = peaking(G, fc, Q, fs)
% Derive coefficients for a peaking filter with a given amplitude and
% bandwidth.  All coefficients are calculated as described in Zolzer's
% DAFX book (p. 50 - 55).  This algorithm assumes a constant Q-term
% is used through the equation.
%
% Usage:     [B,A] = peaking(G, Fc, Q, Fs);
%
%            G is the logrithmic gain (in dB)
%            FC is the center frequency
%            Q is Q-term equating to (Fb / Fc)
%            Fs is the sampling rate
%
% Author:    Jeff Tackett 08/22/05
%
K = tan((pi * fc)/fs);
V0 = 10^(G/20);
%Invert gain if a cut
if(V0 < 1)
    V0 = 1/V0;
end
%%%%%%%%%%%%%%
%   BOOST
%%%%%%%%%%%%%%
if( G > 0 )
   
    b0 = (1 + ((V0/Q)*K) + K^2) / (1 + ((1/Q)*K) + K^2);
    b1 =        (2 * (K^2 - 1)) / (1 + ((1/Q)*K) + K^2);
    b2 = (1 - ((V0/Q)*K) + K^2) / (1 + ((1/Q)*K) + K^2);
    a1 = b1;
    a2 =  (1 - ((1/Q)*K) + K^2) / (1 + ((1/Q)*K) + K^2);
  
%%%%%%%%%%%%%%
%    CUT
%%%%%%%%%%%%%%
else
    
    b0 = (1 + ((1/Q)*K) + K^2) / (1 + ((V0/Q)*K) + K^2);
    b1 =       (2 * (K^2 - 1)) / (1 + ((V0/Q)*K) + K^2);
    b2 = (1 - ((1/Q)*K) + K^2) / (1 + ((V0/Q)*K) + K^2);
    a1 = b1;
    a2 = (1 - ((V0/Q)*K) + K^2) / (1 + ((V0/Q)*K) + K^2);
    
end
%return values
a = [  1, a1, a2];
b = [ b0, b1, b2];