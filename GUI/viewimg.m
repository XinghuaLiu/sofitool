load('image_sequence.mat');
numOfFrames = size(stacks_discrete,3);
for i = 1 : numOfFrames
    imshow(stacks_discrete(:,:,i),[0 255],'InitialMagnification', 1000);
    pause(0.1);
end
