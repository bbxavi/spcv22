function output = get_nabla(im)

t1 = size( im, 1 );
t2 = size( im, 2 );
% zz1 = zeros( t2, t1 * t2 );
% zz2 = zeros( t1, t1 * t2 );
zz2 = sparse( t1, t1 * t2 );
indneg1 = 1:t1 * t2;
indneg1( mod( indneg1, t1 ) == 1 ) = [  ];
indpos1 = indneg1 + 1;
indneg2 = 1:t1 * t2;
indneg2( mod( indneg2, t1 ) == 0 ) = [  ];
indpos1 = indneg1;
indpos2 = indpos1;
tt = 1:( t2 - 1 ) * t1;
indneg2 = [ indneg2, tt ];
indneg1 = [ indneg1, t1 * t2 + 1:t1 * t2 + ( t2 - 1 ) * t1 ];
indpos1 = [ indpos1, t1 * t2 + 1:t1 * t2 + ( t2 - 1 ) * t1 ];
t = 1:( t2 - 1 ) * t1;
t = t + t1;
indpos2 = [ indpos2, t ];
Nablaneg = sparse( indneg1, indneg2,  - 1, t1 * t2 + ( t2 - 1 ) * t1, t1 * t2 );
Nablapos = sparse( indpos1, indpos2, 1, t1 * t2 + ( t2 - 1 ) * t1, t1 * t2 );
Nabla = Nablaneg + Nablapos;
tt = [ Nabla( 1:t1 * t2, : );zz2;Nabla( t1 * t2 + 1:end , : ) ];
Nabla = tt;
output = Nabla;