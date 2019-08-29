clc;close all;clear all;
v=[1 3 9 10 2 4 5 6 7 8 6 2 8 2 6 8 8 5 5 6 5 7 6 7 9 10 1 3 3  3 9 7 4 6];
e=[1 3 9 10 2 4 5 6 7 8 2 6 2 8 8 6 5 8 6 5 7 5 7 6 3 3  3 9 10 1 7 9 6 4];
S=graph(v,e); 
plot(S);
A=adjacency(S);
G=full(A);
G2=G;G1=G;
c2=[1 3 9 10];
G1(:,c2)=[];G1(c2,:)=[];

c1=[6 2 4 5 7 8];
G2(:,c1)=[];G2(c1,:)=[];

k=1;n=10;m=4;x1=zeros(1,10);
y=Graphcolor(k,G,x1,1);
