function c = star(a,b)

% computes the binary convolution of a and b

    c = a * (1-b) + b * (1-a);
end