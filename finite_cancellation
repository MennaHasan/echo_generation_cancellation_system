%this file generates the echo and then cancel it both using convolution

%%%%this part generates the finite echo using convolution as done in the
%previous file%%%%%%
clear;
clc;
[V, frequency] = audioread("sound.wav");
%attenuation factor
f = 0.3;
delay = frequency*0.6;
h = [1, zeros(1,delay), f];
newV= conv(V,h);


%%%%%this part does the cancellation for finite echo (for signal newV)%%%%%

%creating the impulse function for finite echo cancellation 
s = length(newV);
hcancel = [];
for i = 1:1:10
    hcancel = [hcancel; ((-1)^(i-1))*(f^(i-1))];
    hcancel = [hcancel; zeros(delay,1)];
end

%plotting the impulse function for finite echo cancellation
stem(hcancel);

%restoring the original sound
original = conv(newV,hcancel);

%%%%%%%%%testing the code%%%%%%%%%%
%playing the sound we start with 
sound(V,frequency);
pause(3);

%playing the sound with echo
sound(newV,frequency);
pause(3);

%playing the sound we get after cancelling the echo
sound(original,frequency);

%plotting the impulse function for finite echo generation
stem(h);
title("the impulse function for finite echo generation");
xlabel("time");
figure;

%plotting the impulse function for finite echo cancellation 
stem(hcancel);
title("the impulse function for finite echo cancellation ");
xlabel("time");


%plotting the sound we get after cancelling the echo
figure;
plot(original);
title("the sound after cancelling the echo");
xlabel("time");

%testing the impulse function and its inverse
%convoluting the impulse function for finite echo generation with impulse 
%function for finite echo cancellation

testimpulse=conv(h,hcancel);
figure;
stem(testimpulse);
title("h convoluted with hcancel");
xlabel("time");

