addpath(genpath('../Images'));
addpath(genpath('functions'));

%read in the 4 images provided in images folder
img1 = readImg('edge1.jpg');
img2 = readImg('edge2.jpg');
img3 = readImg('edge3.jpg');
img4 = readImg('edge4.jpg');

%take each image and output a version with low frequency components
%filtered out and an image with high frequency components filtered out
[filtered_high_freq_img1, filtered_low_freq_img1] = freqAnalyzer('edge1.jpg');
[filtered_high_freq_img2, filtered_low_freq_img2] = freqAnalyzer('edge2.jpg');
[filtered_high_freq_img3, filtered_low_freq_img3] = freqAnalyzer('edge3.jpg');
[filtered_high_freq_img4, filtered_low_freq_img4] = freqAnalyzer('edge4.jpg');


%for each image, I score the original image, an image with high frequency
%components filtered out, and an image with low frequency components
%filtered out. Scores above 50 indicate the image has lots of high freq,
%while scores below 50 indicate an image with minimal high freq components
%(edges)
img1_original_score = rate_my_frequency(img1);
img1_with_high_freq_filtered_out_score = rate_my_frequency(filtered_high_freq_img1);
img1_with_low_freq_filtered_out_score = rate_my_frequency(filtered_low_freq_img1);

img2_original_score = rate_my_frequency(img2);
img2_with_high_freq_filtered_out_score = rate_my_frequency(filtered_high_freq_img2);
img2_with_low_freq_filtered_out_score = rate_my_frequency(filtered_low_freq_img2);

img3_original_score = rate_my_frequency(img3);
img3_with_high_freq_filtered_out_score = rate_my_frequency(filtered_high_freq_img3);
img3_with_low_freq_filtered_out_score = rate_my_frequency(filtered_low_freq_img3);

img4_original_score = rate_my_frequency(img4);
img4_with_high_freq_filtered_out_score = rate_my_frequency(filtered_high_freq_img4);
img4_with_low_freq_filtered_out_score = rate_my_frequency(filtered_low_freq_img4);