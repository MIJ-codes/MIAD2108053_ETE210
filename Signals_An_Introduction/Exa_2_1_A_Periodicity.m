%Periodicity
clear;
clc;


%periodicity of 5 sin (6t - pi / 4)
t = 0 : 0.001 : 1;
w = 6;
theta = pi / 4;
T = 2 * pi / w;
x = cos (t * w + theta);
y= cos ((t + T) * w + theta);

if ceil (x) == ceil (y)
    disp ('a) 5 cos (6t + pi / 4) is a periodic with T = 2 * pi /6 (sec)')
else
    disp ('nonperiodic')
end

figure;
plot(t, x, 'b-', 'LineWidth', 1.5); hold on;
plot(t, y, 'r--', 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Amplitude');
title('Part (a): 5cos(6t + \pi/4) and Time-Shifted Signal');
legend('Original Signal', 'Time-Shifted Signal');
grid on;


%periodicity of e^(j3t)
w = 3;
t =0 : 0.001 : 1;
T = 2 * pi / w;
x = exp (3 * i * t);
y = exp (3 * i * (t + T));

if ceil (x) == ceil (y)
    disp ('b) exp (j3t) is periodic with T = 2 * pi / 3 (sec)')
else
    disp ('nonperiodic')
end

figure;
subplot(2, 1, 1); % First subplot
plot(t, real(x), 'b-', 'LineWidth', 1.5); hold on;
plot(t, real(y), 'r--', 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Real Part');
title('Part (b): Real Part of exp(j3t) and Time-Shifted Signal');
legend('Real(Original)', 'Real(Shifted)');
grid on;

subplot(2, 1, 2); % Second subplot
plot(t, imag(x), 'b-', 'LineWidth', 1.5); hold on;
plot(t, imag(y), 'r--', 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Imaginary Part');
title('Imaginary Part of exp(j3t) and Time-Shifted Signal');
legend('Imag(Original)', 'Imag(Shifted)');
grid on;


%periodicity of cot (3t + theta)
t = 0 : 0.001 : 1;
w = 5;
T= pi / w;
x= cot (t * w + theta);
y= cot ((t + T) * w + theta);

if ceil (x) == ceil (y)
    disp ( 'c) cot (3t + Theta) is periodic with T = pi / 5 (sec)')
else
    disp ('nonperiodic')
end

figure;
plot(t, x, 'b-', 'LineWidth', 1.5); hold on;
plot(t, y, 'r--', 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Amplitude');
title('Part (c): cot(3t + \theta) and Time-Shifted Signal');
legend('Original Signal', 'Time-Shifted Signal');
grid on;