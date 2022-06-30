%% Initial setting
% Title: 16-Point FFT Floating point simulator
% Author: Kyeongmin Kim
close all;
clear all;
clc;

%% Parameter and Input
N_point = 16;

input = [ones(1, 8) zeros(1, 8)];

%% FFT with DIF Alogrithm
% STAGE 1
x1 = zeros(1, N_point);
for n = 1:8
    [a] = R2BF(N_point, input(n), input(n + 8), 1 * (n - 1));
    x1(n) = a(1);
    x1(n + 8) = a(2);
end

% STAGE 2
x2 = zeros(1, N_point);
for n = 1:4
    [b] = R2BF(N_point, x1(n), x1(n + 4), 2 * (n - 1));
    x2(n) = b(1);
    x2(n + 4) = b(2);
end
for n = 9:12
    [b] = R2BF(N_point, x1(n), x1(n + 4), 2 * (n - 1));
    x2(n) = b(1);
    x2(n + 4) = b(2);
end

% STAGE 3
x3 = zeros(1, N_point);
for n = 1:4:13
    [c] = R2BF(N_point, x2(n), x2(n + 2), 4 * (n - 1));
    x3(n) = c(1);
    x3(n + 2) = c(2);
end
for n = 2:4:14
    [c] = R2BF(N_point, x2(n), x2(n + 2), 4 * (n - 1));
    x3(n) = c(1);
    x3(n + 2) = c(2);
end

% STAGE 4
x4 = zeros(1, N_point);
for n = 1:2:15
    [d] = R2BF(N_point, x3(n), x3(n + 1), 8 * (n - 1));
    x4(n) = d(1);
    x4(n + 1) = d(2);
end

%% Bit Reverse Ordering
oFFT = bitrevorder(x4);

%% REFERENCE FFT (matlab function)
oFFT_REF = fft(input, 16);

%% fft shift
oFFT_shift = fftshift(oFFT);
oFFT_REF_shift = [oFFT_REF(9:16) oFFT_REF(1:8)];

%% Figure
% input
figure(1);
plot(abs(input), 'bo-'); grid on
xlim([1 16]);
xlabel('Time Index (n)'); ylabel('Magnitude');

% output
figure(2);
plot(abs(oFFT), 'ro-'); grid on
xlim([1 16]);
xlabel('Frequency Index (n)'); ylabel('Magnitude');

% compare shifted ouputs
figure(3);
subplot(2, 1, 1);
plot(abs(oFFT_shift), 'b+-'); grid on
xlim([1 16]);
xlabel('Frequency Index (n)'); ylabel('Magnitude');
legend('FFT Float');
subplot(2, 1, 2);
plot(abs(oFFT_REF_shift), 'ro-'); grid on
xlim([1 16]);
xlabel('Frequency Index (n)'); ylabel('Magnitude');
legend('FFT Reference');