
% Load data
load('./data/1.mat')
% Cut data
cut

for i = 1 : size(ssbeg')
%    display(distinguish(data(ssbeg(i):ssend(i))));
    display(findHighFreq(data(ssbeg(i):ssend(i)),fs,1600) - findLowFreq(data(ssbeg(i):ssend(i)),fs));
end