function y=IGliklhd(x,n,t) 
%Negative log likelihood
% x=[mu, lambda]
mu=x(1); 
lmb=x(2);

y1 = normcdf(sqrt((n.^2).*lmb./t).*(t./(n.*mu)-1))+exp(2.*n.*lmb./mu).*...
    (normcdf(-sqrt((n.^2).*lmb./t).*(t./(n.*mu)+1)));
y2 = normcdf(sqrt(((n+1).^2).*lmb./t).*(t./((n+1).*mu)-1))+exp(2.*(n+1).*lmb./mu).*...
    (normcdf(-sqrt(((n+1).^2).*lmb./t).*(t./((n+1).*mu)+1)));
w=y1-y2;
y=-sum(log(w));
end