% Vibrato 
function y=vibrato(x,SAMPLERATE,Modfreq,Width)
ya_alt=0;
Delay=Width; % basic delay of input sample in sec
DELAY=round(Delay*SAMPLERATE); % basic delay in # samples
WIDTH=round(Width*SAMPLERATE); % modulation width in # samples
if WIDTH>DELAY 
  error('delay greater than basic delay !!!');
  return;
end
MODFREQ=Modfreq/SAMPLERATE; % modulation frequency in # samples
LEN=length(x);        % # of samples in WAV-file
L=2+DELAY+WIDTH*2;    % length of the entire delay  
Delayline=zeros(L,1); % memory allocation for delay
y=zeros(size(x));     % memory allocation for output vector

for n=1:(LEN-1)
   M=MODFREQ;
   MOD=sin(M*2*pi*n);
   ZEIGER=1+DELAY+WIDTH*MOD;
   i=floor(ZEIGER);
   frac=ZEIGER-i;
   Delayline=[x(n);Delayline(1:L-1)]; 
   %---Linear Interpolation-----------------------------
   y(n,1)=Delayline(i+1)*frac+Delayline(i)*(1-frac); 
   
   %---Allpass Interpolation------------------------------
   %y(n,1)=(Delayline(i+1)+(1-frac)*Delayline(i)-(1-frac)*ya_alt);  
   %ya_alt=ya(n,1);
end 