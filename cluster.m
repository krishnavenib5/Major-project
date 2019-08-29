clc;close all;clear all;
X=[2 2.5;2.3 4.5;3 2.5;3.5 4; 2.2 3.5;3 4;2.5 3.5;2 4;2.7 3;3 2];
plot(X(:,1),X(:,2),'r*');
Y=pdist(X);
Z=squareform(Y);
A=Z;
L=linkage(Y);
a=[];c=[];
 for i=1:10
     count=-1;
     for j=1:10
         if(Z(i,j)<=1)
             count=count+1;
             a(i,j)=Z(i,j);
         else
             c(i,j)=Z(i,j);
         end
         n(i)=count;
     end
 end
n1=n;Z=a;c1=[];l=0;
 for i=1:10
     if(n(i)==max(n))
         l=l+1;
         c1(l)=i;
         for j=1:10
             if(Z(i,j)>0)
                 l=l+1;
                 c1(l)=j;
             end
         end
     end
 end
 Z(:,c1)=0;
 Z(c1,:)=0;
 N=Z;
 n(c1)=0;
 b=[];
 for i=1:10
     count=0;
     for j=1:10
         if(Z(i,j)<=1) && (Z(i,j)~=0)
             count=count+1;
             b(i,j)=Z(i,j);
         end
         n(i)=count;
     end
 end 
 n2=n;
 c2=[];l=0;
 for i=1:10
     if(n(i)==max(n))
         l=l+1;
         c2(l)=i;
         for j=1:10
             if(Z(i,j)>0)
                 l=l+1;
                 c2(l)=j;
             end
         end
     end
 end
 Z(:,c2)=0;
 n(c2)=0;