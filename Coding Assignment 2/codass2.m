%%%PART 1
fs = 20000;             
L = 10; % filter length
N = L - 1;
f1 = 300; % 1st cutoff freq
f2 = 3000; % 2nd cutoff freq


w1 = f1 / (fs);
w2 = f2 / (fs);

n = 0:N;
M = N / 2;

% use rectangular windowing to obtain FIR impulse response h
h = 2 * w2 * sinc(2 * w2 * (n - M)) - 2 * w1 * sinc(2 * w1 * (n - M));


% stem(n, h, 'filled');
% title('Impulse Response');
% xlabel('n'); ylabel('h[n]');
% grid on;

% freqz(h, 1, 1024, fs);
% title('Frequency Response (Magnitude and Phase)');

% zplane(h, 1);
% title('Pole-Zero Diagram');
% grid on;



%%%PART 2
[s1,fs1]=audioread('dspcodass2origvoice.mp3');
s1=s1(end-480000:end);
%sound(s1,fs1);

fs2=20000;
uprate = 5;
downrate=12;

ups1 = zeros(1,fs1*10*uprate);
for i= 1 : fs1*10
    ups1(5*i-4) = s1(i);
end

s2=nan(1,fs2);
for i=1:fs2*10
    s2(i) = mean(ups1(12*i-11 : 12*i));
end

%sound(s2,fs2);

s3 = conv(h,s2);
%sound(s3,fs2);

% audiowrite('originalvoice48khz.wav',s1,fs1);
% audiowrite('resampledvoice20khz.wav',s2,fs2);
% audiowrite('filteredvoice20khz.wav',s3,fs2);

% subplot(3,1,1);
% plot(abs(fft(s1)));
% grid on;
% title("FFT of Original Recording - Audio 1");
% xlim([0 480000])
% subplot(3,1,2);
% plot(abs(fft(s2)));
% grid on;
% title("FFT of Resampled Recording - Audio 2");
% subplot(3,1,3);
% xlim([0 200000]);
% plot(abs(fft(s3)));
% grid on;
% title("FFT of Filtered Recording - Audio 3");
% xlim([0 200000]);
