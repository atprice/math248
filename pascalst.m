% i=row
% j=column
% p=triangle (array)
% n=how far (length)


n=13; p=zeros(n,n);

p(1,1)=1;
for i=2:n
    p(i,1)=1; p(i,i)=1;
    for j=2:i-1
        p(i,j)=p(i-1,j)+p(i-1,j-1);
    end
end

disp(p)