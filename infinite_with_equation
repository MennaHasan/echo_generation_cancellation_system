%this part does the infinite echo using system equation
clear;
clc;

%loading the sound file and its frequency into a matrix 
[V, frequency] = audioread("sound.wav");
plot(V);
title("original sound vector");
xlabel ("time");

f = 0.3; %attenuation factor
delay = frequency*0.6; %delay = 0.6 seconds
%this means dealy(in elements number of the vector)= frequency * 0.6 s ;

%n defines the number of echos taken into account
n = 10;

%generating the echos we will add to the original V
for i=1:n
    echo = [];
    echo = V*(f^i);
    d = delay*i;
    delayed_echo = [zeros(d,1);echo];
    V = [V;zeros(d,1)];
    V = V + delayed_echo;
end


%testing the sound resulting from infinte echo generation
sound(V,frequency);

%plotting the new sound vector ater infinite echo generation
figure;
plot(V);
title("new sound vector ater infinite echo generation");
xlabel ("time");
axis([0 150000 -1 1 ]);
