
sum =0;
for x = 1:999999
    palindromic = 0;
    numDigits = floor(log10(x))+1;
    strDigits = int2str(x);
    for i = 1:numDigits
        a(i) = strDigits(i:i);
    end
    for j = 1:floor(numDigits/2)
        if a(j) == a(numDigits -j + 1)
            palindromic = palindromic + 1;
        end
    end
    if palindromic == floor(numDigits/2)
        palindromicBinary = 0;
        numDigitsBinary = floor(log2(x))+1;
        strDigitsBinary = dec2bin(x);
        for k = 1:numDigitsBinary
            b(k) = strDigitsBinary(k:k);
        end
        for l = 1:floor(numDigitsBinary/2)
            if b(l) == b(numDigitsBinary -l + 1)
                palindromicBinary = palindromicBinary + 1;
            end
        end
        if palindromicBinary == floor(numDigitsBinary/2)
            sum=sum+x;
        end
    end
end
disp(sum);
