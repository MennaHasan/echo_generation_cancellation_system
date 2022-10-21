%this part does the infinite echo using convolution
clear;
clc;

%loading the sound file and its frequency into a matrix 
[V, frequency] = audioread("sound.wav");
f = 0.3; %attenuation factor
% calculating the delay in terms of elements in the vector
delay = frequency*0.6; %delay = 0.6 seconds
n = 10;  % number of attenuated echos to be considered

%creating the impulse function of the infinite echo convolution 
h = [];
for i = 1:1:n
    h = [h; f^(i-1)];
    h = [h; zeros(delay,1)];
end

%generating the sound vector with echo by convoluting the original sound
%wiht h
newV = conv(h,V);

%playing the new sound with echo
sound(newV,frequency);

%plotting the impulse function of the infinite echo convolution 
stem(h);
title("the impulse function of the infinite echo convolution ");
xlabel ("time");
figure;
%plotting the original sound vector
plot(V);
title("original sound vector");
xlabel ("time");
%plotting the new sound vector ater infinite echo generation
figure;
plot(newV);
title("new sound vector ater infinite echo generation");
xlabel ("time");
axis([0 150000 -1 1 ]);
