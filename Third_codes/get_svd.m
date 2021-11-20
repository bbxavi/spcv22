function [output] = get_svd(input,radius)

mean = get_mean(input,radius);
std = get_std(input,radius);
 output = min(1,std./mean);
% output = std./mean;
% output(output>1)=1;
% output (output<0.3)=0;
% output (output>0.5)=1;
end

