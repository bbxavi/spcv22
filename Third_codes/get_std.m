
function [output] = get_std(src,radius)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明

[row,line] = size(src);
output=zeros(row,line);
for i=1+radius:row-radius
    for j=1+radius:line-radius
        tem_matrix=src(i-radius:i+radius,j-radius:j+radius);
        output(i,j)=std2(tem_matrix);
    end
end
end