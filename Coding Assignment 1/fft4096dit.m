function output = fft4096dit(input)

if length(input) ~= 4096
    error('Array Size Incompatibility');
end


indices = bitrevorder(0:4095) + 1;
orderedinput = input(indices);

output = orderedinput;

for s = 1:12
    m = 2^s;
    W_m = exp(-1j * 2 * pi / m);
    for k = 0:m:4095
        for j = 0:(m/2)-1
            t = W_m^j * output(k + j + m/2 + 1);
            u = output(k + j + 1);
            output(k + j + 1) = u + t;
            output(k + j + m/2 + 1) = u - t;
        end
    end
end

end
