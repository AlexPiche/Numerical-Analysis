function z = lorenz(t, d)
    sig=10; bet=8/3; rho=28; 
    z(1) = sig*(d(2)-d(1));
    z(2) = d(1)*(rho-d(3)) - d(2);
    z(3) = d(1)*d(2) - bet*d(3);

