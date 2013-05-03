i=0; s=0; n=100;
% n=sum_(i=1)^n i, where i is a loop counter
while i<n
    i=i+1; s=s+i;
end
disp(s)

i=1; s=0;
while i<=n
    s=s+i; i=i+1;
end
disp(s)

i=1; s=0;
while i<=n
    s=s+i; i=i+2;
end
disp(s)

i=1; s=0;
while i<=n
    s=s+sqrt(i); i=i+1;
end
disp(s)

i=1; s=0;
while i<=n
    s=s+sqrt(i); i=i+2;
end
disp(s)