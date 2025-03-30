function [output]= dft9(input)

if length(input) ~= 9
    error('Array Size Incompatibility');
end
output=nan(1,9);
for k = 0:8
    sum_val = 0;
    for n = 0:8
        sum_val = sum_val + input(n+1) * exp(-1j * 2 * pi * k * n / 9);
    end
    output(k+1) = sum_val;
end

end