clc;
clear;

% delta (t)
for j = 1:1000
    if j == 1
        delta(j) = 1;  % Set the first element to 1
    else
        delta(j) = 0;  % Set all other elements to 0
    end
end

% a)
figure(1);
t = -1;
plot(t, 0, 'o');  % Initial plot (replace plot2d4 with plot)
for j = 1:10
    t = t + 1;
    z(j) = cosd(j - 1) * delta(j);  % Cosine function scaled by delta
    plot(t, z(j), 'o');  % Plot each point (replace plot2d3 with plot)
    disp(z(j));
end

% b)
figure(2);
t = 1.5;
plot(t, 0, 'o');  % Initial plot (replace plot2d4 with plot)
for j = 3:10
    t = t + 1;
    z(j) = abs(cosd(2.5) * delta(2 * j - 5));  % Cosine function scaled by delta at a different index
    plot(t, z(j), 'o');  % Plot each point (replace plot2d3 with plot)
end

% c)
syms t;
A = (-1) * exp(-t);  % Exponential decay function
disp(diff(A, t));  % Display the derivative of A with respect to t
disp("when t=3");
A = exp(-3);  % Evaluate the expression at t = 3
disp(A);
