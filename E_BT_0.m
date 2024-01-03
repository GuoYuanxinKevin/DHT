function e = E_BT_0(p,a,t)

    % (Definition 6, Haim & Kochman): w = 0

    % w = 0, and y has to be 0
    % Solve for E_w(p,1-a,a,t-a) 
    % = min_x (1-a) d(x/(1-a)||p) + a d((x-t+a)/a||p)

    if a == 0
        e = d_b(t,p);
    elseif a == 1
        e = d_b(1-t,p);
    else

        cvx_begin
            variable x nonnegative;
            minimize( (1-a)* (rel_entr(x/(1-a), p) + rel_entr(1-x/(1-a), 1-p)) + a * (rel_entr((x-t+a)/a, p) +rel_entr(1-(x-t+a)/a, 1-p)) );
            subject to
            x >= t-a;
            x <= 1-a;
            x <= t;
        cvx_end
        e = log2(exp(1)) * cvx_optval;
    end
end