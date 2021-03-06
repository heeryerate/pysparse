% $Id$
%

for n = [100, 300, 500]

   n
   tic
   L = poisson2d_kron(n);
   toc
   b = ones(n*n,1);
   tic
   [x,flag,relres,iter] = pcg(L, b, 1e-8, 2000, [], [], zeros(n*n,1));
   toc
   iter, relres, norm(b - L*x)/norm(b)

end
