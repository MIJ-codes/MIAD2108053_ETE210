%Even and Odd Calculation
clc;
clear;

t = 0:1:10;

for i = 1:length(t)
    x(i) = (t(i)^6) + 2*(t(i)^4) + 3*(t(i)^2) + 4;
end

for i = 1:length(t)
    y(i) = ((-t(i))^6) + 2*((-t(i))^4) + 3*((-t(i))^2) + 4;
end

% Checking if the function is even: x(t) = x(-t)
if isequal(x, y) % Corrected from 'x == y' to 'isequal'
    disp("The function is even.");
end

% Odd part of the signal = 0.5 * (x(t) - x(-t))
z = 0.5 * (x - y);

if all(z == 0) % Corrected to check all elements of z
    disp("The odd part is 0.");
end

