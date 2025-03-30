function [output]= dft256(input)

if length(input) ~= 256
    error('Array Size Incompatibility');
end
output=nan(1,256);
for k = 0:255
    sum_val = 0;
    for n = 0:255
        sum_val = sum_val + input(n+1) * exp(-1j * 2 * pi * k * n / 256);
    end
    output(k+1) = sum_val;
end

end