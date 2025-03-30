%Question 1 Part 1
rng(2,"twister")
N = 32;
real_part = randn(1,N);
imag_part = randn(1,N);
x32 = real_part + 1i*imag_part;

% stem(real(x32),'*','LineWidth',2);
% title('Real Part of the Random Complex Array');
% xlabel('n');
% ylabel('x[n]');
% xline(0);
% yline(0);
% grid on;

% stem(imag(x32),'*','LineWidth',2);
% title('Imaginary Part of the Random Complex Array');
% xlabel('n');
% ylabel('x[n]');
% xline(0);
% yline(0);
% grid on;


tic;
a1 = dft32(x32);
t1b=toc;

tic;
matrix32 = dft32matrixgenerator();
a2 = x32*matrix32;
t1d=toc;

tic;
a3= fft32dit(x32);
t1e=toc;

tic;
a4 = fft32dif(x32);
t1f=toc;

tic;
a5 = fft(x32);
t1g=toc;

% subplot(3,2,1);
% stem(abs(a1),'*','LineWidth',2);
% title('Magnitude Plot of the Computed 32-pt DFT by Method 1');
% xlabel('k');
% ylabel('|X[k]|');
% xline(0);
% yline(0);
% grid on;
% subplot(3,2,2);
% stem(abs(a2),'*','LineWidth',2);
% title('Magnitude Plot of the Computed 32-pt DFT by Method 2');
% xlabel('k');
% ylabel('|X[k]|');
% xline(0);
% yline(0);
% grid on;
% subplot(3,2,3);
% stem(abs(a3),'*','LineWidth',2);
% title('Magnitude Plot of the Computed 32-pt DFT by Method 3');
% xlabel('k');
% ylabel('|X[k]|');
% xline(0);
% yline(0);
% grid on;
% subplot(3,2,4);
% stem(abs(a4),'*','LineWidth',2);
% title('Magnitude Plot of the Computed 32-pt DFT by Method 4');
% xlabel('k');
% ylabel('|X[k]|');
% xline(0);
% yline(0);
% grid on;
% subplot(3,2,5);
% stem(abs(a5),'*','LineWidth',2);
% title('Magnitude Plot of the Computed 32-pt DFT by Method 5');
% xlabel('k');
% ylabel('|X[k]|');
% xline(0);
% yline(0);
% grid on;


% subplot(3,2,1);
% stem(angle(a1)*180/pi,'*','LineWidth',2);
% title('Phase Plot of the Computed 32-pt DFT by Method 1');
% xlabel('k');
% ylabel('∠X[k]');
% xline(0);
% yline(0);
% grid on;
% subplot(3,2,2);
% stem(angle(a2)*180/pi,'*','LineWidth',2);
% title('Phase Plot of the Computed 32-pt DFT by Method 2');
% xlabel('k');
% ylabel('∠X[k]');
% xline(0);
% yline(0);
% grid on;
% subplot(3,2,3);
% stem(angle(a3)*180/pi,'*','LineWidth',2);
% title('Phase Plot of the Computed 32-pt DFT by Method 3');
% xlabel('k');
% ylabel('∠X[k]');
% xline(0);
% yline(0);
% grid on;
% subplot(3,2,4);
% stem(angle(a4)*180/pi,'*','LineWidth',2);
% title('Phase Plot of the Computed 32-pt DFT by Method 4');
% xlabel('k');
% ylabel('∠X[k]');
% xline(0);
% yline(0);
% grid on;
% subplot(3,2,5);
% stem(angle(a5)*180/pi,'*','LineWidth',2);
% title('Phase Plot of the Computed 32-pt DFT by Method 5');
% xlabel('k');
% ylabel('∠X[k]');
% xline(0);
% yline(0);
% grid on;


norms32 = [norm(a1-a2),norm(a1-a3),norm(a1-a4),norm(a1-a5)];
norms32 < 0.00001
%if the above line gives 4 logical 1's; then the algorithms are correct
%a1,a2,a3,a4,a5 are the 5 DFT's with 5 methods


%Question 1 Part 2
rng(2,"twister")
N = 256;
real_part = randn(1,N);
imag_part = randn(1,N);
x256 = real_part + 1i*imag_part;

% stem(real(x256),'o','filled');
% title('Real Part of the Random Complex Array');
% xlabel('n');
% ylabel('x[n]');
% xline(0);
% yline(0);
% grid on;

% stem(imag(x256),'o','filled');
% title('Imaginary Part of the Random Complex Array');
% xlabel('n');
% ylabel('x[n]');
% xline(0);
% yline(0);
% grid on;

tic;
b1 = dft256(x256);
t2b=toc;

tic;
matrix256 = dft256matrixgenerator();
b2 = x256*matrix256;
t2d=toc;

tic;
b3= fft256dit(x256);
t2e=toc;

tic;
b4 = fft256dif(x256);
t2f=toc;

tic;
b5 = fft(x256);
t2g=toc;

% subplot(3,2,1);
% stem(abs(b1),'o','filled');
% title('Magnitude Plot of the Computed 256-pt DFT by Method 1');
% xlabel('k');
% ylabel('|X[k]|');
% xline(0);
% yline(0);
% grid on;
% subplot(3,2,2);
% stem(abs(b2),'o','filled');
% title('Magnitude Plot of the Computed 256-pt DFT by Method 2');
% xlabel('k');
% ylabel('|X[k]|');
% xline(0);
% yline(0);
% grid on;
% subplot(3,2,3);
% stem(abs(b3),'o','filled');
% title('Magnitude Plot of the Computed 256-pt DFT by Method 3');
% xlabel('k');
% ylabel('|X[k]|');
% xline(0);
% yline(0);
% grid on;
% subplot(3,2,4);
% stem(abs(b4),'o','filled');
% title('Magnitude Plot of the Computed 256-pt DFT by Method 4');
% xlabel('k');
% ylabel('|X[k]|');
% xline(0);
% yline(0);
% grid on;
% subplot(3,2,5);
% stem(abs(b5),'o','filled');
% title('Magnitude Plot of the Computed 256-pt DFT by Method 5');
% xlabel('k');
% ylabel('|X[k]|');
% xline(0);
% yline(0);
% grid on;


% subplot(3,2,1);
% stem(angle(b1)*180/pi,'o','filled');
% title('Phase Plot of the Computed 256-pt DFT by Method 1');
% xlabel('k');
% ylabel('∠X[k]');
% xline(0);
% yline(0);
% grid on;
% subplot(3,2,2);
% stem(angle(b2)*180/pi,'o','filled');
% title('Phase Plot of the Computed 256-pt DFT by Method 2');
% xlabel('k');
% ylabel('∠X[k]');
% xline(0);
% yline(0);
% grid on;
% subplot(3,2,3);
% stem(angle(b3)*180/pi,'o','filled');
% title('Phase Plot of the Computed 256-pt DFT by Method 3');
% xlabel('k');
% ylabel('∠X[k]');
% xline(0);
% yline(0);
% grid on;
% subplot(3,2,4);
% stem(angle(b4)*180/pi,'o','filled');
% title('Phase Plot of the Computed 256-pt DFT by Method 4');
% xlabel('k');
% ylabel('∠X[k]');
% xline(0);
% yline(0);
% grid on;
% subplot(3,2,5);
% stem(angle(b5)*180/pi,'o','filled');
% title('Phase Plot of the Computed 256-pt DFT by Method 5');
% xlabel('k');
% ylabel('∠X[k]');
% xline(0);
% yline(0);
% grid on;

norms256 = [norm(b1-b2),norm(b1-b3),norm(b1-b4),norm(b1-b5)];
norms256 < 0.00001
%if the above line gives 4 logical 1's; then the algorithms are correct
%b1,b2,b3,b4,b5 are the 5 DFTs with 5 methods


%Question 1 Part 3
rng(2,"twister")
N = 4096;
real_part = randn(1,N);
imag_part = randn(1,N);
x4096 = real_part + 1i*imag_part;

% stem(real(x4096),'o','filled');
% title('Real Part of the Random Complex Array');
% xlabel('n');
% ylabel('x[n]');
% xline(0);
% yline(0);
% grid on;

% stem(imag(x4096),'o','filled');
% title('Imaginary Part of the Random Complex Array');
% xlabel('n');
% ylabel('x[n]');
% xline(0);
% yline(0);
% grid on;

tic;
c1 = dft4096(x4096);
t3b=toc;

tic;
matrix4096 = dft4096matrixgenerator();
c2 = x4096*matrix4096;
t3d=toc;

tic;
c3= fft4096dit(x4096);
t3e=toc;

tic;
c4 = fft4096dif(x4096);
t3f=toc;

tic;
c5 = fft(x4096);
t3g=toc;
 
% subplot(3,2,1);
% stem(abs(c1),'.','filled');
% title('Magnitude Plot of the Computed 4096-pt DFT by Method 1');
% xlabel('k');
% ylabel('|X[k]|');
% xline(0);
% yline(0);
% grid on;
% subplot(3,2,2);
% stem(abs(c2),'.','filled');
% title('Magnitude Plot of the Computed 4096-pt DFT by Method 2');
% xlabel('k');
% ylabel('|X[k]|');
% xline(0);
% yline(0);
% grid on;
% subplot(3,2,3);
% stem(abs(c3),'.','filled');
% title('Magnitude Plot of the Computed 4096-pt DFT by Method 3');
% xlabel('k');
% ylabel('|X[k]|');
% xline(0);
% yline(0);
% grid on;
% subplot(3,2,4);
% stem(abs(c4),'.','filled');
% title('Magnitude Plot of the Computed 4096-pt DFT by Method 4');
% xlabel('k');
% ylabel('|X[k]|');
% xline(0);
% yline(0);
% grid on;
% subplot(3,2,5);
% stem(abs(c5),'.','filled');
% title('Magnitude Plot of the Computed 4096-pt DFT by Method 5');
% xlabel('k');
% ylabel('|X[k]|');
% xline(0);
% yline(0);
% grid on;


% subplot(3,2,1);
% stem(angle(c1)*180/pi,'.','filled');
% title('Phase Plot of the Computed 4096-pt DFT by Method 1');
% xlabel('k');
% ylabel('∠X[k]');
% xline(0);
% yline(0);
% grid on;
% subplot(3,2,2);
% stem(angle(c2)*180/pi,'.','filled');
% title('Phase Plot of the Computed 4096-pt DFT by Method 2');
% xlabel('k');
% ylabel('∠X[k]');
% xline(0);
% yline(0);
% grid on;
% subplot(3,2,3);
% stem(angle(c3)*180/pi,'.','filled');
% title('Phase Plot of the Computed 4096-pt DFT by Method 3');
% xlabel('k');
% ylabel('∠X[k]');
% xline(0);
% yline(0);
% grid on;
% subplot(3,2,4);
% stem(angle(c4)*180/pi,'.','filled');
% title('Phase Plot of the Computed 4096-pt DFT by Method 4');
% xlabel('k');
% ylabel('∠X[k]');
% xline(0);
% yline(0);
% grid on;
% subplot(3,2,5);
% stem(angle(c5)*180/pi,'.','filled');
% title('Phase Plot of the Computed 4096-pt DFT by Method 5');
% xlabel('k');
% ylabel('∠X[k]');
% xline(0);
% yline(0);
% grid on;

norms4096 = [norm(c1-c2),norm(c1-c3),norm(c1-c4),norm(c1-c5)];
norms4096 < 0.00001
%if the above line gives 4 logical 1's; then the algorithms are correct
%c1,c2,c3,c4,c5 are the 5 DFTs with 5 methods

times1 = transpose([t1b,t1d,t1e,t1f,t1g;t2b,t2d,t2e,t2f,t2g;t3b,t3d,t3e,t3f,t3g]);
%times1 is basically table1 in the manual




%Question 2
rng(2,"twister")
N = 9;
real_part = randn(1,N);
imag_part = randn(1,N);
x9 = real_part + 1i*imag_part;

tic;
for i=1:100
d1 = dft9(x9);
end
t2c = toc;

tic;
for i=1:100
d2=fft9dif(x9);
end
t2d =toc;

tic;
for i=1:100
d3 = fft(x9);
end
t2e=toc;

% subplot(3,1,1);
% stem(abs(d1),'*','LineWidth',2);
% title('Magnitude Plot of the Computed 9-pt DFT by Method 1');
% xlabel('k');
% ylabel('|X[k]|');
% xline(0);
% yline(0);
% grid on;
% subplot(3,1,2);
% stem(abs(d2),'*','LineWidth',2);
% title('Magnitude Plot of the Computed 9-pt DFT by Method 2');
% xlabel('k');
% ylabel('|X[k]|');
% xline(0);
% yline(0);
% grid on;
% subplot(3,1,3);
% stem(abs(d3),'*','LineWidth',2);
% title('Magnitude Plot of the Computed 9-pt DFT by Method 3');
% xlabel('k');
% ylabel('|X[k]|');
% xline(0);
% yline(0);
% grid on;

% subplot(3,1,1);
% stem(angle(d1)*180/pi,'*','LineWidth',2);
% title('Phase Plot of the Computed 9-pt DFT by Method 1');
% xlabel('k');
% ylabel('∠X[k]');
% xline(0);
% yline(0);
% grid on;
% subplot(3,1,2);
% stem(angle(d2)*180/pi,'*','LineWidth',2);
% title('Phase Plot of the Computed 9-pt DFT by Method 2');
% xlabel('k');
% ylabel('∠X[k]');
% xline(0);
% yline(0);
% grid on;
% subplot(3,1,3);
% stem(angle(d3)*180/pi,'*','LineWidth',2);
% title('Phase Plot of the Computed 9-pt DFT by Method 3');
% xlabel('k');
% ylabel('∠X[k]');
% xline(0);
% yline(0);
% grid on;

norms9 = [norm(d1-d2),norm(d1-d3)];
norms9 < 0.00001
%if the above line gives 2 logical 1's; then the algorithms are correct
%d1,d2,d3 are the 3 DFTs with 3 methods

times2 = [t2c,t2d,t2e];
%times2 is the efficiency comparison array for question 2
