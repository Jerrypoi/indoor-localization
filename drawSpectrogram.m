function [F,T,P] = drawSpectrogram( data, fs,doPlot )
%     [~,F,T,P] = spectrogram(data,1024,1023,size(data) ,fs);
%     spectrogram(x,window,noverlap,f,fs) returns the spectrogram at the cyclical frequencies specified in f.
    [~,F,T,P] = spectrogram(data,64,63,1024 ,fs);
    if doPlot == 1
        figure
        surf(T,F,10*log10(P), 'edgecolor', 'none');
        xlabel('Time (secs)');
        xlim([T(1), T(end)]);
        ylabel('Freq (Hz)');
        zlabel('Energy');
        title('STFT');
    end
%     view(0,90);
end
