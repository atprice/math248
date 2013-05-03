big=0; bigi=0;
for i=1:1000
    x=sumdigits(i);
    if x>big, big=x; bigi=i; end
end
disp(big), disp(bigi)