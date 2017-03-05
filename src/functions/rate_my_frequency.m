%this function takes in an image and rate's it's frequency's. An image with
%lot's of high frequency components will have a large score above 50, while
%an image with low freqeuncy components will have smaller score below 50

function [ power_ratio_score] = rate_my_frequency( img )

highFrequencyImg = myFFT(img);
[filter_high, filter_low] = createFilter(img, 0.1); %high pass and low pass filter


filteredHighFreqImg = filter_high .* highFrequencyImg; % will only return frequency values in the center of the FFT img aka the high freq values
realHighFreq = real( (filteredHighFreqImg)); %since we have the fft values these are complex values, we are only interested in the real components


% Calculate the power in the spectrums %
columnSumOfImg = sum(abs(highFrequencyImg.^2)); %real values can be negative, so we take the absolute value by squaring all values and summing it by column
totalImgPower = sum(columnSumOfImg); % Summing the columns will give the total overal power of the img

columnSumOfFilteredImg = sum(realHighFreq.^2); %calculate total power of the filtered image which will be less than the overall power
filteredImgPower = sum(columnSumOfFilteredImg); 

power_ratio_score = (filteredImgPower/totalImgPower)*100; % take the ratio of the filtered img's power and the total img's power and multiple by 100 to give score



end

