clc
clear all

% the data is from RIAC (Relability information analysis center)
n=[3 1 3 1 1 9 2 1 1 5 1 1]; % number of  events
t=25.5*ones(1,12);  % time interval

lb=[0 0];
ub=[100 100];
x0=[2 1.5];
A=[0 0];
b=[1];
Aeq=[];
beq=[];
[x,fval]=fmincon(@(x)IGliklhd(x,n,t),[2,1],A,b,Aeq,beq,lb,ub);
x
fval