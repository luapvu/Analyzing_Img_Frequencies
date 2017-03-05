function [ fft, shifted_fft ] = myFFT( img )

fft = fft2(img); %converts img to freq domain with high values at the center
shifted_fft = fftshift(fft); %shifts low frequency values to the center



end

