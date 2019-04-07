%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%             Spectral Envelope Extraction             %
%              with MATLAB Implementation              %
%                                                      %
% Author: Ph.D. Eng. Hristo Zhivomirov        01/28/18 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Xenv = specenv(Xamp, f)

% function: Xenv = specenv(Xamp, f)
% Xamp - amplitude spectrum of the signal
% f - frequency vector, Hz
% Xenv - envelope of the amplitude spectrum

% spectral envelope extraction via shape-preserving
% piecewise cubic interpolation of the spectral peaks
% and moving average filtration of the result (span = 5)
[Xpks, pksind] = findpeaks(Xamp+eps);
fpks = (pksind-1)*(f(2) - f(1));
Xenv = interp1(fpks, Xpks, f, 'pchip');
Xenv = smooth(Xenv);