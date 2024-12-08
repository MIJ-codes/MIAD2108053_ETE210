%Power calculation
clear;
clc;

% Define symbolic variable
syms t;

% Given values
amp = 5;  % Amplitude of the signal

% Define the signal squared: x(t) = 5, so x(t)^2 = 25
signal_squared = 25;  % x(t)^2 = 25

% Compute the power of the signal using symbolic integration (int)
X_symbolic = int(signal_squared, t, 0, 10);  % Symbolic integration over [0, 10]

% Display the power of the signal
disp("The power of the signal (in watts) is:");
disp(double(X_symbolic) / (2 * 10));  % Divide by 2*T (where T=10) and convert to double

% Calculate and display the RMS value of the signal
rms = amp / sqrt(2);
disp("The RMS value of power is (in watts):");
disp(rms);



