function results = FiniteDiff(a, b, alph, bet, h)
    N = (b-a)/h -1;
    A = zeros(N, N);
    B = ones(N,1);
    for i = 2:N-1
        x(i) = a + i*h;
        A(i,i) = 2;
        A(i+1,i) = -1;
        A(i, i+1) = -1;
    end
    B = h^2*B;
    x(1)=h;
    x(N)=b-h;
    A(1,1) = 2;
    A(N,N) = 2;
    A(2,1) = -1;
    A(1,2) = -1;
    A(N,N-1) = -1;
    B(1) = 1;
    B(N) = 0;
    y = A\B;
    plot(x,y);


