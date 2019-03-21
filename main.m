
% Load data
load('./data/4.mat')
% Cut data
cut

for i = 1 : size(ssbeg')
%    display(distinguish(data(ssbeg(i):ssend(i))));
    % The second argument for findHighFreq is the desinated frequency.
    % I tried from 1200 to 3200.
    display(findHighFreq(data(ssbeg(i):ssend(i)),fs,3200) - findLowFreq(data(ssbeg(i):ssend(i)),fs));
end