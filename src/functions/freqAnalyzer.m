
%function takes an image, and outputs the same image with high frequency
%components filtered out and low freq filtered out
function [ filtered_highT_mug1, filtered_lowT_mug1 ] = freqAnalyzer( img )

myImg = readImg(img);
printImg(myImg, 'Original img');

%create circular filter with 10% length and 10% width. These can be treated
%as high pass and low pass filter
[highPassFilter, lowPassFilter] = createFilter(myImg, 0.1);

%getting high freq and low freq centered results
[highFreqCenter_FFT_mug1, lowFreqCenter_FFT_mug1] = myFFT(myImg);

%filter high freq results 
filtered_highF_mug1 = lowPassFilter .* highFreqCenter_FFT_mug1; %filters out the high freq results
filtered_highT_mug1 = ifft2(filtered_highF_mug1); %convert back from the frequency domain to time domain


filtered_lowF_mug1 = highPassFilter .*lowFreqCenter_FFT_mug1; %filters out the low freq results
shift_mug1 = fftshift(filtered_lowF_mug1); %since low freqencies are at the edges, we need to shift back the high freq to the center
filtered_lowT_mug1 = ifft2(shift_mug1); %after shifting high freq to center, we can convert back to time domain



printImg(filtered_highT_mug1, 'Img with High Freq filtered out.');
printImg(filtered_lowT_mug1, 'Img with Low Freq filtered out.');

end

