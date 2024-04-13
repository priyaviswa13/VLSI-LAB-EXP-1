module logicgates(a,b,c1,c2,c3,c4,c5,c6,c7);
input a,b;
output c1,c2,c3,c4,c5,c6,c7;
and g1(c1,a,b);
or g2(c2,a,b);
nand g3(c3,a,b);
nor g4(c4,a,b);
xor g5(c5,a,b);
xnor g6(c6,a,b);
not g7(c7,a);
endmodule
