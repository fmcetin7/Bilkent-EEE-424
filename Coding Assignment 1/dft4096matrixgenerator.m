function W = dft4096matrixgenerator()

W = nan(4096,4096); 

for k = 0:4095
    for n = 0:4095
        W(k+1, n+1) = exp(-1j * 2 * pi * k * n / 4096);
    end
end

end
