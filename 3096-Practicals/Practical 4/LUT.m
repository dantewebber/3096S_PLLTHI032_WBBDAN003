% Define the number of points (128 in this case)
N = 128;

% Generate a sinusoidal LUT
sin_lut = round(511 * sin(2 * pi * (0:N-1) / N) + 511);

% Generate a sawtooth wave LUT
saw_lut = round(1023 * (mod(0:N-1, N) / N));

% Generate a triangular wave LUT
tri_lut = round(1023 * (abs(mod(0:N-1, N) - N / 2) / (N / 2)));

% Plot the LUTs to verify the waveforms
figure;
subplot(3, 1, 1);
plot(sin_lut);
title('Sinusoid LUT');
subplot(3, 1, 2);
plot(saw_lut);
title('Sawtooth LUT');
subplot(3, 1, 3);
plot(tri_lut);
title('Triangular LUT');

% We must set Fsignal to 1kHz since the fc of the filter is 5kHz
% NS = 128
% TIM2CLK = 8MHz
% TIM2_Ticks = (TIM2CLK / NS * Fsignal)-1