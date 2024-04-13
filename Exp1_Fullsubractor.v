module fs(a,b,c,diff,borrow);
input a,b,c;
output diff,borrow;
  wire w1,w2,w3;
  xor g1(w1,a,b);
  and g2(w2,~a,b);
  xor g3(diff,w1,c);
  and g4(w3,c,~w1);
  or g5(borrow,w3,w2);
endmodule
