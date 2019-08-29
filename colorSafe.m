function [y]=colorSafe(k,c,G,x)
for i=1:10
    if(G(k,i)==1 && c==x(i))
        y=false;
    end
end
y=true;
end