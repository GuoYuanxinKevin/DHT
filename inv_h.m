function q = inv_h(a)
    cvx_begin
        variable p nonnegative;
        minimize p
        subject to 
            entr(p)./log(2) + entr(1-p)./log(2) >= a;
    cvx_end
    q = cvx_optval; 
end