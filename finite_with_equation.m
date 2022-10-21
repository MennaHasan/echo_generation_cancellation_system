%file for the first model first part
%echo generation using system equation 
clear;
clc;
%loading the sound file and its frequency into a matrix 
[V, frequency] = audioread("sound.wav");


f = 0.3; %attenuation factor
% calculating the delay in terms of elements in the vector
delay = frequency*0.6; %delay = 0.6 seconds
%this means dealy(in elements number of the vector)= frequency * 0.6 s ;

%generating the echo signal (without delay)
echo = f*V;
%generating the delayed echo signal into a vector
delayed_echo = [zeros(delay,1);echo];

%adding zeros to extend the size of the vector, to allow addition 
V = [V;zeros(delay,1)];

%adding the delayed echo vector to the original sound
newV = V + delayed_echo;

%playing the new sound, the original sound with echo
sound(newV,frequency);

%plotting the original sound vector, and the sound with echo vector
plot(V);
xlabel("time");
title("the original sound vector");
figure;
plot(newV);
title("the sound with echo vector");
xlabel("time");


