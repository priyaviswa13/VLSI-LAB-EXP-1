module ripplecarry(a,b,c,sum,cout);
input a,b,c;
output sum,cout;
wire w1,w2,w3;
xor g1(w1,c,b);
and g2(sum,w1,b);
xor g3(w2,a,b);
and g4(w3,c,w1);
or g5(carry,w2,w3);
endmodule
module rc(a,b,cin,sum,cout);
input [3:0]a,b;
input cin;
output [3:0]sum;
output cout;
wire w1,w2,w3;
Rc Rc1 (a[0],b[0],cin,sum[0],w1);
Rc Rc2 (a[1],b[1],w1,sum[1],w2);
Rc Rc3 (a[2],b[2],w2,sum[2],w3);
Rc Rc4 (a[3],b[3],w3,sum[3],w4);
endmodule
