%Real Imaginary Calculation
clc;
clear;

% e^(j(2*pi*f*t + theta))
syms pi f0 t theta A; % Declare symbolic variables

K = 2 * pi * f0 * t + theta; % Phase angle of the signal

disp("The given signal is complex.");
disp("e^(j*theta) can be written as:");
disp("cos(theta) + j*sin(theta)");

% Compute the real and imaginary parts of the signal
Re = A * cos(K);
Img = A * sin(K);

% Compute the magnitude of the signal
mag = sqrt(Re^2 + Img^2);

% Display results
disp("Real part is: ");
pretty(Re);

disp("Imaginary part is: ");
pretty(Img);

disp("Magnitude of the signal |A| is: ");
pretty(mag);

disp("Phase of the signal: ");
pretty(K);
