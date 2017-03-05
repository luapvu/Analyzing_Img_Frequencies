In this project I implemented a program that takes an image, and removes the high and low frequency components of an image. Thus we will have 3 images, the original image, a filtered high frequency image and a filtered low frequency image. 

These images are then ranked and scored using my frequency scoring algorithm which ranks each image between 0-100 depending on how much high frequency components are in the image. A score below 50 indicates the image is predominately low frequency (not many edges) while a large score indicates there is a lot of high frequency in the image (many sharp edges).

To run the program, download Matlab and run main.m