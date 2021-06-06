%this file generates the echo and then cancel it both using convolution
clear;
clc;

%%%%this part generates the infinite echo%%%%%

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

plot(newV);
title("the sound with the echo");
xlabel ("time");

%%%%%%cancellation part%%%%%%%%%

hcancel = [ 1 (zeros(1,delay)) -f ]; %canceling the impulse 

%restoring the original sound
original = conv(hcancel,newV);

%playing the new sound with echo
sound(newV,frequency);
pause(5);

%playing the sound we get after cancelling the echo
sound(original,frequency);

%plotting the impulse function of the infinite echo generation 
figure;
stem(h);
title("the impulse function of the infinite echo generation ");
xlabel ("time");

%plotting the impulse function of the infinite echo generation 
figure;
stem(hcancel);
title("the impulse function of the infinite echo cancellation ");
xlabel ("time");

%plotting the function after cancelling the echo
figure;
plot(original);
title("the sound after cancelling the echo");
xlabel ("time");

%convoluting h with hcancel to check the result
test = conv(h,hcancel);

%plotting h convolution value with hcancel
figure;
stem(test);
title("the convolution of h with hcancel ");
xlabel ("time");
