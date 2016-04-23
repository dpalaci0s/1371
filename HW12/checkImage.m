%Usage: out = checkImage(img1, img2)
%
%given two images, checkImage will tell you if the two images are the
%same. If they have different dimensions, the output will be 'The images have different dimensions'
%If the dimensions of the image are the same, but there are pixel differences,
%the function will create a new image that is black everywhere the images are
%different and white everywhere they are the same. This image will be titled
%img1VSimg2