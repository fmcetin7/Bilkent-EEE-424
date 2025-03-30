function output = fft9dif(input)

if length(input) ~= 9
    error('Array Size Incompatibility');
end

N = 9;
output = input;

W_9 = exp(-1j * 2 * pi / N);

for k = 0:2
    u = output(k+1) + output(k+4) + output(k+7);
    v = output(k+1) + W_9^3 * output(k+4) + W_9^6 * output(k+7);
    w = output(k+1) + W_9^6 * output(k+4) + W_9^3 * output(k+7);
    
    output(k+1) = u;
    output(k+4) = v;
    output(k+7) = w;
end

output(5) = output(5) * W_9;
output(6) = output(6) * W_9^2;
output(8) = output(8) * W_9^2;
output(9) = output(9) * W_9^4;

for k = 0:3:N-1
    u = output(k+1) + output(k+2) + output(k+3);
    v = output(k+1) + W_9^3 * output(k+2) + W_9^6 * output(k+3);
    w = output(k+1) + W_9^6 * output(k+2) + W_9^3 * output(k+3);
    
    output(k+1) = u;
    output(k+2) = v;
    output(k+3) = w;
end

    

indices = [1,4,7,2,5,8,3,6,9]; 
output = output(indices);


end
