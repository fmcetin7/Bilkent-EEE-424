function W = dft32matrixgenerator()

W = nan(32,32); 

for k = 0:31
    for n = 0:31
        W(k+1, n+1) = exp(-1j * 2 * pi * k * n / 32);
    end
end

end
