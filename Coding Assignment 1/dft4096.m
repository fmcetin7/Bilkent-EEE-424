function [output]= dft4096(input)

if length(input) ~= 4096
    error('Array Size Incompatibility');
end
output=nan(1,4096);
for k = 0:4095
    sum_val = 0;
    for n = 0:4095
        sum_val = sum_val + input(n+1) * exp(-1j * 2 * pi * k * n / 4096);
    end
    output(k+1) = sum_val;
end

end