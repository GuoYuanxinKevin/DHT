function h = h_b(p)

% computes the binary entropy function of p

    h = -log2(exp(1)) * (rel_entr(p,1) + rel_entr(1-p, 1));
end