
function [output] = get_std(src,radius)
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��

[row,line] = size(src);
output=zeros(row,line);
for i=1+radius:row-radius
    for j=1+radius:line-radius
        tem_matrix=src(i-radius:i+radius,j-radius:j+radius);
        output(i,j)=std2(tem_matrix);
    end
end
end