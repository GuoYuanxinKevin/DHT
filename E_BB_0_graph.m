%% Obtaining E_BB via graphical method


% Setting up constants
% Compute E_BB(p1, a, 0, a ★ p0)

p0 = 0.01;
p1 = 0.45;
R = 0.9;
a = inv_h(1-R);

p = p1;
t = star(a,p0);

%% Plotting RHS of Eq (71) as a function of r
step = a / 20;
rr = 0:step:a;
E = [];
for r = 0:step:a
    E = [E h_b(a) - h_b(r) + E_BT_0(p,r,t)];
end

% It can be seen from the graph that [-h_b(a) + h_b(r) + E_BT(p,r,0,t)]
% attains minimum when r = 0, with value [d_b(t||p) - (1-R)]

% In this example E_BB(p1, a, 0, a ★ p0) < 0.


plot(rr,E)

