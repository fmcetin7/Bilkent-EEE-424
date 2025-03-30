function output = fft32dif(input)

if length(input) ~= 32
    error('Array Size Incompatibility');
end

output = input;

for s = 5:-1:1
    m = 2^s;
    W_m = exp(-1j * 2 * pi / m);
    for k = 0:m:31
        for j = 0:(m/2)-1
            u = output(k + j + 1);
            t = output(k + j + m/2 + 1);
            output(k + j + 1) = u + t;
            output(k + j + m/2 + 1) = (u - t) * W_m^j;
        end
    end
end

indices = bitrevorder(0:31) + 1;
output = output(indices);


end
