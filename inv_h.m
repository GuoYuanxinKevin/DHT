function q = inv_h(a)

% computes the inverse binary entropy function of a number 0 <= a <= 1

    cvx_begin
        variable p nonnegative;
        minimize p
        subject to 
            entr(p)./log(2) + entr(1-p)./log(2) >= a;
    cvx_end
    q = cvx_optval; 
end