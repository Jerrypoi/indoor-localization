function [result] = calculateSTFT(f,p,fs,determinedFQ, time)
% 
%   f,t,p is result of spectrogram(data,64,63,64 ,fs) 
%
%
    NG = 2;
    result = 0;
    pos = uint8(determinedFQ / fs * length(f));
    for i = -NG:NG
        result = result + p(pos + i,time);
    end

end
