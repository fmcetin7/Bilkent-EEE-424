function [output]= dft32(input)

if length(input) ~= 32
    error('Array Size Incompatibility');
end
output=nan(1,32);
for k = 0:31
    sum_val = 0;
    for n = 0:31
        sum_val = sum_val + input(n+1) * exp(-1j * 2 * pi * k * n / 32);
    end
    output(k+1) = sum_val;
end

end