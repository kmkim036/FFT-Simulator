%% Initial setting
% Title: 16-Point FFT Fixed-point simulator
% Author: Kyeongmin Kim
close all;
clear all;
clc;

%% ==============================================================
clc; close all; clear all;
%-------------------------------------------------------------------------%
%                           User Parameter Setting
%-------------------------------------------------------------------------%
N = 16; % N-point
% "need to change bit size after
sign = 1; frac = 6; int = N - 1 - frac; % Input Q-format : Q(16,frac)
int
frac
IL = sign + int + frac; % Input Length  : Q(16,frac)
OL = IL; % Output Length : Q(16,frac)
% Number of Data
slot = 1;
NOD = N * slot;
%-------------------------------------------------------------------------%
%                         INPUT DATA GENERATION
%-------------------------------------------------------------------------%
iDATA = complex(rand(1, NOD) - 0.5, rand(1, NOD) - 0.5); % random data : from -0.5 to +0.5
%--------------------------------------------------------------------------
% CONVERSION FLOATING-POINT DATA TO FIXED-POINT DATA : Q(16,frac)
%--------------------------------------------------------------------------
% dynamic range : -2^(IL-1) ~ 2^(IL-1)
iDATA_LEN = length(iDATA);
iDATA_FIX_RE = kau_Round(iDATA_LEN, IL, 0, real(iDATA) * 2 ^ frac);
iDATA_FIX_IM = kau_Round(iDATA_LEN, IL, 0, imag(iDATA) * 2 ^ frac);
iDATA_FIX = complex(clipping(iDATA_FIX_RE, IL), clipping(iDATA_FIX_IM, IL));

SQNR_INPUT_RE = SQNR_CAL(real(iDATA), real(iDATA_FIX), - frac)
SQNR_INPUT_IM = SQNR_CAL(imag(iDATA), imag(iDATA_FIX), - frac)

%% FFT 반복 계산 루프
for pkt = 1:slot
    %%
    % 16-pts FFT에 맞게 입력 수 16개씩 할당
    iDATA_BF = iDATA((pkt - 1) * N + 1:pkt * N);
    iDATA_BF_FIX = iDATA_FIX((pkt - 1) * N + 1:pkt * N);
    %-------------------------------------------------------------------------%
    %                                 STAGE 1
    %-------------------------------------------------------------------------%
    % R2 DIF SINGLE_BF FLOAT POINT DESIGN
    for n = 1:8
        [oDATA1_SB_FLOAT] = SINGLE_BF(N, iDATA_BF(n), iDATA_BF(n + 8), n - 1);
        x1_FLOAT(n) = oDATA1_SB_FLOAT(1);
        x1_FLOAT(n + 8) = oDATA1_SB_FLOAT(2);
    end
 
    % R2 DIF SINGLE_BF FIXED POINT DESIGN
    for n = 1:8
        [oDATA1_SB_FIX] = SINGLE_BF_FIX(N, iDATA_BF_FIX(n), iDATA_BF_FIX(n + 8), n - 1);
        x1_FIX(n) = oDATA1_SB_FIX(1);
        x1_FIX(n + 8) = oDATA1_SB_FIX(2);
    end
 
    % DATA DUMP IN STAGE 1
    x1_FLOAT_DUMP((pkt - 1) * N + 1:pkt * N) = x1_FLOAT;
    x1_FIX_DUMP((pkt - 1) * N + 1:pkt * N) = x1_FIX;
 
    %%
    %-------------------------------------------------------------------------%
    %                                 STAGE 2
    %-------------------------------------------------------------------------%
    % R2 DIF SINGLE_BF FLOAT POINT DESIGN
    for n = 1:4
        [oDATA2_SB_FLOAT] = SINGLE_BF(N, x1_FLOAT(n), x1_FLOAT(n + 4), 2 * (n - 1));
        x2_FLOAT(n) = oDATA2_SB_FLOAT(1);
        x2_FLOAT(n + 4) = oDATA2_SB_FLOAT(2);
    end
 
    for n = 9:12
        [oDATA2_SB_FLOAT] = SINGLE_BF(N, x1_FLOAT(n), x1_FLOAT(n + 4), 2 * (n - 1));
        x2_FLOAT(n) = oDATA2_SB_FLOAT(1);
        x2_FLOAT(n + 4) = oDATA2_SB_FLOAT(2);
    end
 
    % R2 DIF SINGLE_BF FIXED POINT DESIGN
    for n = 1:4
        [oDATA2_SB_FIX] = SINGLE_BF_FIX(N, x1_FIX(n), x1_FIX(n + 4), 2 * (n - 1));
        x2_FIX(n) = oDATA2_SB_FIX(1);
        x2_FIX(n + 4) = oDATA2_SB_FIX(2);
    end
 
    for n = 9:12
        [oDATA2_SB_FIX] = SINGLE_BF_FIX(N, x1_FIX(n), x1_FIX(n + 4), 2 * (n - 1));
        x2_FIX(n) = oDATA2_SB_FIX(1);
        x2_FIX(n + 4) = oDATA2_SB_FIX(2);
    end
 
    % DATA DUMP IN STAGE 2
    x2_FLOAT_DUMP((pkt - 1) * N + 1:pkt * N) = x2_FLOAT;
    x2_FIX_DUMP((pkt - 1) * N + 1:pkt * N) = x2_FIX;
 
    %%
    %-------------------------------------------------------------------------%
    %                                 STAGE 3
    %-------------------------------------------------------------------------%
    % R2 DIF SINGLE_BF FLOAT POINT DESIGN
    for n = 1:4:13
        [oDATA3_SB_FLOAT] = SINGLE_BF(N, x2_FLOAT(n), x2_FLOAT(n + 2), 4 * (n - 1));
        x3_FLOAT(n) = oDATA3_SB_FLOAT(1);
        x3_FLOAT(n + 2) = oDATA3_SB_FLOAT(2);
    end
 
    for n = 2:4:14
        [oDATA3_SB_FLOAT] = SINGLE_BF(N, x2_FLOAT(n), x2_FLOAT(n + 2), 4 * (n - 1));
        x3_FLOAT(n) = oDATA3_SB_FLOAT(1);
        x3_FLOAT(n + 2) = oDATA3_SB_FLOAT(2);
    end
 
    % R2 DIF SINGLE_BF FIXED POINT DESIGN
    for n = 1:4:13
        [oDATA3_SB_FIX] = SINGLE_BF(N, x2_FIX(n), x2_FIX(n + 2), 4 * (n - 1));
        x3_FIX(n) = oDATA3_SB_FIX(1);
        x3_FIX(n + 2) = oDATA3_SB_FIX(2);
    end
 
    for n = 2:4:14
        [oDATA3_SB_FIX] = SINGLE_BF(N, x2_FIX(n), x2_FIX(n + 2), 4 * (n - 1));
        x3_FIX(n) = oDATA3_SB_FIX(1);
        x3_FIX(n + 2) = oDATA3_SB_FIX(2);
    end

    % DATA DUMP IN STAGE 3
    x3_FLOAT_DUMP((pkt - 1) * N + 1:pkt * N) = x3_FLOAT;
    x3_FIX_DUMP((pkt - 1) * N + 1:pkt * N) = x3_FIX;
 
    %%
    %-------------------------------------------------------------------------%
    %                                 STAGE 4
    %-------------------------------------------------------------------------%
    % R2 DIF SINGLE_BF FLOAT POINT DESIGN
    for n = 1:2:15
        [oDATA4_SB_FLOAT] = SINGLE_BF(N, x3_FLOAT(n), x3_FLOAT(n + 1), 8 * (n - 1));
        x4_FLOAT(n) = oDATA4_SB_FLOAT(1);
        x4_FLOAT(n + 1) = oDATA4_SB_FLOAT(2);
    end
 
    % R2 DIF SINGLE_BF FIXED POINT DESIGN
    for n = 1:2:15
        [oDATA4_SB_FIX] = SINGLE_BF(N, x3_FIX(n), x3_FIX(n + 1), 8 * (n - 1));
        x4_FIX(n) = oDATA4_SB_FIX(1);
        x4_FIX(n + 1) = oDATA4_SB_FIX(2);
    end
 
    % DATA DUMP IN STAGE 3
    x4_FLOAT_DUMP((pkt - 1) * N + 1:pkt * N) = x4_FLOAT;
    x4_FIX_DUMP((pkt - 1) * N + 1:pkt * N) = x4_FIX;
 
    %%
    % bit reverse order
    oFFT_SB_FLOAT = bitrevorder(x4_FLOAT);
    oFFT_SB_FIX = bitrevorder(x4_FIX);
 
    oFFT_SB_FLOAT_DUMP((pkt - 1) * N + 1:pkt * N) = bitrevorder(x4_FLOAT);
    oFFT_SB_FIX_DUMP((pkt - 1) * N + 1:pkt * N) = bitrevorder(x4_FIX);
 
    %-------------------------------------------------------------------------%
    %                     REFERENCE FFT (matlab function)
    %-------------------------------------------------------------------------%
    oFFT_REF_DUMP((pkt - 1) * N + 1:pkt * N) = fft(iDATA_BF, 16);
 
    % fft shift : FFT나 FFT2 등 함수의 결과로 생긴 신호를 재배열하여 zero-frequency 성분이 출력의 가운데에 위치하도록 함 -> 좌우 바꿈
    oFFT_REF_shift_DUMP((pkt - 1) * N + 1:pkt * N) = [oFFT_REF_DUMP((pkt - 1) * N + 9:(pkt - 1) * N + 16) oFFT_REF_DUMP((pkt - 1) * N + 1:(pkt - 1) * N + 8)];
    oFFT_SB_FLOAT_shift_DUMP((pkt - 1) * N + 1:pkt * N) = [oFFT_SB_FLOAT_DUMP((pkt - 1) * N + 9:(pkt - 1) * N + 16) oFFT_SB_FLOAT_DUMP((pkt - 1) * N + 1:(pkt - 1) * N + 8)];
    oFFT_SB_FIX_shift_DUMP((pkt - 1) * N + 1:pkt * N) = [oFFT_SB_FIX_DUMP((pkt - 1) * N + 9:(pkt - 1) * N + 16) oFFT_SB_FIX_DUMP((pkt - 1) * N + 1:(pkt - 1) * N + 8)];
 
end

SQNR_INPUT_1st_RE = SQNR_CAL(real(x1_FLOAT_DUMP), real(x1_FIX_DUMP), - frac)
SQNR_INPUT_1st_IM = SQNR_CAL(imag(x1_FLOAT_DUMP), imag(x1_FIX_DUMP), - frac)
SQNR_INPUT_2nd_RE = SQNR_CAL(real(x2_FLOAT_DUMP), real(x2_FIX_DUMP), - frac)
SQNR_INPUT_2nd_IM = SQNR_CAL(imag(x2_FLOAT_DUMP), imag(x2_FIX_DUMP), - frac)
SQNR_INPUT_3rd_RE = SQNR_CAL(real(x3_FLOAT_DUMP), real(x3_FIX_DUMP), - frac)
SQNR_INPUT_3rd_IM = SQNR_CAL(imag(x3_FLOAT_DUMP), imag(x3_FIX_DUMP), - frac)
SQNR_INPUT_4th_RE = SQNR_CAL(real(x4_FLOAT_DUMP), real(x4_FIX_DUMP), - frac)
SQNR_INPUT_4th_IM = SQNR_CAL(imag(x4_FLOAT_DUMP), imag(x4_FIX_DUMP), - frac)

%%
%-------------------------------------------------------------------------%
%                               figure
%-------------------------------------------------------------------------%
% input
figure(1);
plot(real(iDATA), 'bo-');
grid on;
legend('INPUT RE');
figure(2);
plot(imag(iDATA), 'bo-');
grid on;
legend('INPUT IM');
figure(3);
plot(iDATA_FIX_RE, 'bo-');
grid on;
legend('iDATA RE FIX');
figure(4);
plot(iDATA_FIX_IM, 'bo-');
grid on;
legend('iDATA IM FIX');
% output
figure(5);
plot(abs(oFFT_SB_FLOAT_DUMP), 'ro-');
grid on;
legend('before fft shift');

figure(6);
subplot(3, 1, 1);
plot(abs(oFFT_REF_shift_DUMP), 'bo-'); grid on;
legend('FFT REF');
subplot(3, 1, 2);
plot(abs(oFFT_SB_FLOAT_shift_DUMP), 'ro-'); grid on;
legend('FFT SB FLOAT');
subplot(3, 1, 3);
plot(abs(oFFT_SB_FIX_shift_DUMP / 2 ^ frac), 'go-');
legend('FFT SB FIX');

figure(7);  
plot(abs(oFFT_REF_shift_DUMP), 'b+-'); grid on; hold on; set(gcf,'color','w');
plot(abs(oFFT_SB_FLOAT_shift_DUMP), 'ro-'); hold on;
plot(abs(oFFT_SB_FIX_shift_DUMP/2^frac), 'g<-');
legend('FFT REF','FFT SB FLOAT','FFT SB FIX');

%% 
%-------------------------------------------------------------------------%
%                                FILE OUT
%-------------------------------------------------------------------------%
%-------------------------------------------------
%       convert dec to bin for input data
%-------------------------------------------------
oFFT_SB_FIX_RE_DUMP_TMP = real(oFFT_SB_FIX_DUMP);
oFFT_SB_FIX_IM_DUMP_TMP = imag(oFFT_SB_FIX_DUMP);
% input / output 
[iDATA_RE_HDL,iDATA_IM_HDL] = kau_dec2bin(NOD, IL, iDATA_FIX_RE, iDATA_FIX_IM);
[oDATA_RE_HDL,oDATA_IM_HDL] = kau_dec2bin(NOD, OL, int32(oFFT_SB_FIX_RE_DUMP_TMP),int32(oFFT_SB_FIX_IM_DUMP_TMP));
[X1_RE_HDL,X1_IM_HDL] = kau_dec2bin(NOD, IL, real(x1_FIX_DUMP), imag(x1_FIX_DUMP));
[X2_RE_HDL,X2_IM_HDL] = kau_dec2bin(NOD, OL, real(x2_FIX_DUMP), imag(x2_FIX_DUMP));
[X3_RE_HDL,X3_IM_HDL] = kau_dec2bin(NOD, OL, real(int32(x3_FIX_DUMP)), imag(int32(x3_FIX_DUMP)));
% *2^frac : fixed-pts level로 출력 위해
           
%-------------------------------------------------
%            file out for input data 
%-------------------------------------------------
dlmwrite( 'DATA\dec_iDATA_RE_m.txt', iDATA_FIX_RE(:), 'delimiter', '', 'newline', 'pc');
dlmwrite( 'DATA\dec_iDATA_IM_m.txt', iDATA_FIX_IM(:), 'delimiter', '', 'newline', 'pc');
dlmwrite( 'DATA\hex_iDATA_RE_v.txt', dec2hex(iDATA_RE_HDL,IL/4), 'delimiter', '', 'newline', 'pc');
dlmwrite( 'DATA\hex_iDATA_IM_v.txt', dec2hex(iDATA_IM_HDL,IL/4), 'delimiter', '', 'newline', 'pc');
dlmwrite( 'DATA\hex_iDATA_v.txt', [dec2hex(iDATA_RE_HDL,IL/4) dec2hex(iDATA_IM_HDL,IL/4)], 'delimiter', '', 'newline', 'pc');
%-------------------------------------------------
%            file out for stage 2  
%-------------------------------------------------
x1_FLOAT_RE = real(x1_FIX_DUMP);    x1_FLOAT_IM = imag(x1_FIX_DUMP);
x2_FLOAT_RE = real(x2_FIX_DUMP);    x2_FLOAT_IM = imag(x2_FIX_DUMP);
x3_FLOAT_RE = real(x3_FIX_DUMP);    x3_FLOAT_IM = imag(x3_FIX_DUMP);

% stage 1
dlmwrite( 'DATA\dec_X1_RE_m.txt', x1_FLOAT_RE(:), 'delimiter', '', 'newline', 'pc');
dlmwrite( 'DATA\dec_X1_IM_m.txt', x1_FLOAT_IM(:), 'delimiter', '', 'newline', 'pc');
dlmwrite( 'DATA\hex_X1_RE_v.txt', dec2hex(X1_RE_HDL,IL/4), 'delimiter', '', 'newline', 'pc');
dlmwrite( 'DATA\hex_X1_IM_v.txt', dec2hex(X1_IM_HDL,IL/4), 'delimiter', '', 'newline', 'pc');
% stage 2
dlmwrite( 'DATA\dec_X2_RE_m.txt', x2_FLOAT_RE(:), 'delimiter', '', 'newline', 'pc');
dlmwrite( 'DATA\dec_X2_IM_m.txt', x2_FLOAT_IM(:), 'delimiter', '', 'newline', 'pc');
dlmwrite( 'DATA\hex_X2_RE_v.txt', dec2hex(X2_RE_HDL,IL/4), 'delimiter', '', 'newline', 'pc');
dlmwrite( 'DATA\hex_X2_IM_v.txt', dec2hex(X2_IM_HDL,IL/4), 'delimiter', '', 'newline', 'pc');
% stage 3
dlmwrite( 'DATA\dec_X3_RE_m.txt', x3_FLOAT_RE(:), 'delimiter', '', 'newline', 'pc');
dlmwrite( 'DATA\dec_X3_IM_m.txt', x3_FLOAT_IM(:), 'delimiter', '', 'newline', 'pc');
dlmwrite( 'DATA\hex_X3_RE_v.txt', dec2hex(X3_RE_HDL,IL/4), 'delimiter', '', 'newline', 'pc');
dlmwrite( 'DATA\hex_X3_IM_v.txt', dec2hex(X3_IM_HDL,IL/4), 'delimiter', '', 'newline', 'pc');
%-------------------------------------------------
%            file out for output data 
%-------------------------------------------------
dlmwrite( 'DATA\dec_oDATA_RE_m.txt', oFFT_SB_FIX_RE_DUMP_TMP(:), 'delimiter', '', 'newline', 'pc');
dlmwrite( 'DATA\dec_oDATA_IM_m.txt', oFFT_SB_FIX_IM_DUMP_TMP(:), 'delimiter', '', 'newline', 'pc');
dlmwrite( 'DATA\hex_oDATA_RE_v.txt', dec2hex(oDATA_RE_HDL,OL/4), 'delimiter', '', 'newline', 'pc');
dlmwrite( 'DATA\hex_oDATA_IM_v.txt', dec2hex(oDATA_IM_HDL,OL/4), 'delimiter', '', 'newline', 'pc');

oFFT_SB_FIX_RE_DUMP_TMP_reverse = real(bitrevorder(oFFT_SB_FIX_DUMP));
oFFT_SB_FIX_IM_DUMP_TMP_reverse = imag(bitrevorder(oFFT_SB_FIX_DUMP));
[oDATA_RE_HDL_reverse,oDATA_IM_HDL_reverse] = kau_dec2bin(NOD, OL, int32(oFFT_SB_FIX_RE_DUMP_TMP_reverse),int32(oFFT_SB_FIX_IM_DUMP_TMP_reverse));
dlmwrite( 'DATA\hex_oDATA_RE_v_reverse.txt', dec2hex(oDATA_RE_HDL_reverse,OL/4), 'delimiter', '', 'newline', 'pc');
dlmwrite( 'DATA\hex_oDATA_IM_v_reverse.txt', dec2hex(oDATA_IM_HDL_reverse,OL/4), 'delimiter', '', 'newline', 'pc');
