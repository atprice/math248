A(1,:) = [75 00 00 00 00 00 00 00 00 00 00 00 00 00 00];
A(2,:) = [95 64 00 00 00 00 00 00 00 00 00 00 00 00 00];
A(3,:) = [17 47 82 00 00 00 00 00 00 00 00 00 00 00 00];
A(4,:) = [18 35 87 10 00 00 00 00 00 00 00 00 00 00 00];
A(5,:) = [20 04 82 47 65 00 00 00 00 00 00 00 00 00 00];
A(6,:) = [19 01 23 75 03 34 00 00 00 00 00 00 00 00 00];
A(7,:) = [88 02 77 73 07 63 67 00 00 00 00 00 00 00 00];
A(8,:) = [99 65 04 28 06 16 70 92 00 00 00 00 00 00 00];
A(9,:) = [41 41 26 56 83 40 80 70 33 00 00 00 00 00 00];
A(10,:) = [41 48 72 33 47 32 37 16 94 29 00 00 00 00 00];
A(11,:) = [53 71 44 65 25 43 91 52 97 51 14 00 00 00 00];
A(12,:) = [70 11 33 28 77 73 17 78 39 68 17 57 00 00 00];
A(13,:) = [91 71 52 38 17 14 91 43 58 50 27 29 48 00 00];
A(14,:) = [63 66 04 68 89 53 67 30 73 16 69 87 40 31 00];
A(15,:) = [04 62 98 27 23 09 70 98 73 93 38 53 60 04 23];

sum = 0;
count=0;
greatestSum=0;
B(1)=A(1,1);
for g=1:2
    B(2)=A(2,g);        
    for h = g:(g+1)
        B(3)=A(3,h);        
        for i =h:(h+1)
            B(4)=A(4,i);
            for j = i:(i+1)
                B(5)=A(5,j);
                for k = j:(j+1)
                    B(6)=A(6,k);
                    for l =k:(k+1)
                        B(7)=A(7,l);
                        for m =l:(l+1)
                            B(8)=A(8,m);
                            for n =m:(m+1)
                                B(9)=A(9,n);
                                for o =n:(n+1)
                                    B(10)=A(10,o);
                                    for p =o:(o+1)
                                        B(11)=A(11,p);
                                        for q =p:(p+1)
                                            B(12)=A(12,q);
                                            for r =q:(q+1)
                                                B(13)=A(13,r);
                                                for s =r:(r+1)
                                                    B(14)=A(14,s);
                                                    for t = s:(s+1)
                                                        B(15)=A(15,t);
                                                        sum = 0; 
                                                        for u = 1:15
                                                            sum = sum + B(u);
                                                            if sum > greatestSum
                                                                greatestSum = sum;
                                                            end    
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
disp(greatestSum)