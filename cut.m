fs = 12299
data = sampleData';
[result,ssbeg,ssend] = seg_var_rasp(data,fs,2);

plot_image = 0;
if(result == 1 && plot_image == 1)
    for i = 1:length(ssbeg)
        figure(i)
        plot(data(ssbeg(i):ssend(i)))
    end
end