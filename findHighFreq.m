function time = findHighFreq(data,fs,freq)
    [f,t,p] = drawSpectrogram(data,fs,0);
    stftStar = 0;
    for j = 1 : length(t)
        if calculateSTFT(f,p,fs,freq,j) > stftStar 
            stftStar = calculateSTFT(f,p,fs,freq,j);
        end
    end
    for j = 1 : length(t)
        if calculateSTFT(f,p,fs,freq,j) > 0.5 * stftStar
%             display(calculateSTFT(f,p,fs,800,j))
            break;
        end
    end
    time = t(j);
end