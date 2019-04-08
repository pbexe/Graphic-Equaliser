function [output]=rev(sound, gain, delay)

output = sound;
d = delay * 5000;

for i = 1:3
    b=[gain zeros(1,round(d/i)) 1];
    a=[1 zeros(1,round(d/i)) gain];
    output = filter(b, a, output);
end

output = sound + output;