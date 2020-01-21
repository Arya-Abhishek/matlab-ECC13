% Rectangular pulse and plotting its fft
t=-5:.01:5;
x=2*rectpuls(t,2);
figure(1)
plot(t,x)
grid
Ts = mean(diff(t));                                     % Sampling Interval
Fs = 1/Ts;                                              % Sampling Frequency
Fn = Fs / 0.01;                                              % Nyuquist Frequency
L = length(x);
ftx = fft(x)/L;                                         % Fourier Transform
ftxs = fftshift(ftx);                                   % Shift To Centre
Fv = linspace(-Fn, Fn, L);                              % Frequency Vector
figure(2)
subplot(2,1,1)
plot(Fv, abs(ftxs))                                     % Plot Amplitude
grid
subplot(2,1,2)
plot(Fv, angle(ftxs))                                   % Plot Phase
grid