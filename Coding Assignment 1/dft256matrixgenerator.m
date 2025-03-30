function W = dft256matrixgenerator()

W = nan(256,256); 

for k = 0:255
    for n = 0:255
        W(k+1, n+1) = exp(-1j * 2 * pi * k * n / 256);
    end
end

end
