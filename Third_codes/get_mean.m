function output = get_mean(input,radius)
o = radius*2+1;
B=ones(o)/o^2;
output=conv2(double(input),double(B),'same');%用均值后的卷积核求和