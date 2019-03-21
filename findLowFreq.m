function time = findLowFreq(data,fs)
    maxIndex = 1;
    dataTemp = data - mean(data);
    for i = 1:size(data)
        if dataTemp(maxIndex) < abs(dataTemp(i))
            maxIndex = i;
        end
        
    end
    time = maxIndex / fs;
end
