function s=symmetric(a)
n=length(a);
i=1; j=n;
while i<j && a(i)==a(j)
    i=i+1; j=j-1;
end
if i>=j
    a=true;
else
    a=false;
end