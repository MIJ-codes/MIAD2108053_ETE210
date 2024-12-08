%Energy Calculation
clear;
clc;

% Define symbolic variables
syms t;

% Signal x(t) = 2, so x(t)^2 = 4
signal = 4;  % x(t)^2 = 4

% Compute the energy over the interval [-2, 2] using symbolic integration
Ex = int(signal, t, -2, 2);  % Integrate 4 over the interval [-2, 2]

disp("The energy of the signal (in Joules) is:");
disp(Ex);



