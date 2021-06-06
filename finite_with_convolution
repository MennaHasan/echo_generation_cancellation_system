%this part does the finite echo using convolution
clear;
clc;
%loading the sound file and its frequency into a matrix 
[V, frequency] = audioread("sound.wav");
f = 0.3; %attenuation factor
% calculating the delay in terms of elements in the vector
delay = frequency*0.6; %delay = 0.6 seconds
%this means dealy(in elements number of the vector)= frequency * 0.6 s ;


%generating the impulse function of finite echo generation
h = [1, zeros(1,delay), f];

%convoluting the impulse function with the original vector
newV= conv(V,h); %sound with echo is saved in vector newV

%playing the sound with echo
sound(newV,frequency);
%plottting the original sound vector 
plot(V);
title("the original sound vector");
xlabel("time");

%plotting the sound vector with echo
figure;
plot(newV);
title("the sound with echo vector");
xlabel("time");

%plotting the impulse function for finite echo generation
figure;
stem(h);
title("the impulse function for finite echo generation");
xlabel("time");
