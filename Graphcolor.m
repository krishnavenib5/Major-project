function [x]=Graphcolor(k,G,y,c)
while k<11
    if(colorSafe(k,c,G,y))
        y(k)=c;
        k=k+1;
        if(k<11 && c~=4)
            y=Graphcolor(k,G,y,c+1);
        else
            if k<11
            c=1;
            y = Graphcolor(k,G,y,c+1);
            end
        end
    end
     if k==11
         break;
     end
end
x=y;
end

