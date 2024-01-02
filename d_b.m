function d = d_b(a,b)

% computes the binary divergence function of two positive numbers a and b

    d = log2(exp(1)) * (rel_entr(a,b) + rel_entr(1-a, 1-b));
end