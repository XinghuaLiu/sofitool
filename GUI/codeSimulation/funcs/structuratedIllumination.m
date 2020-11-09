function Ion = structuratedIllumination(position, Fluo,  Structed)
% Simulated the sturctured illumination according to the 

%Inputs:
% position              location of the fluoresore
% Fluo                  parameters of the fluorophore and sample 
%                       fluorescent properties [struct]
%Structed               parameters of the structed illumination
x = position(1);
y = position(2);
kx = Structed.k*cos(Structed.Orient);
ky = Structed.k*sin(Structed.Orient);
Ion = 1/2*Fluo.Ion*(1+cos((kx*x+ky*y+Structed.Phase)));
end