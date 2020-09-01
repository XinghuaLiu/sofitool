load('image_sequence.mat');
numOfFrames = size(stacks_discrete,3);
n = 3;
framesPerPhase = numOfFrames/n/n;
framesSIM = zeros(size(stacks_discrete,1),size(stacks_discrete,1),n^2);
for j = 1 : n
   for k = 1 : n
       for i = 1 : framesPerPhase
            framesSIM(:,:,k+(j-1)*n) = framesSIM(:,:,k+(j-1)*n)+...
            double(stacks_discrete(:,:,(k-1+(j-1)*n)*framesPerPhase+i));
       end
       framesSIM(:,:,k+(j-1)*n) = framesSIM(:,:,k+(j-1)*n)/framesPerPhase;
   end
end
for i = 1 : n^2
    subplot(n,n,i);
    imshow(framesSIM(:,:,i),[0 100]);
end
