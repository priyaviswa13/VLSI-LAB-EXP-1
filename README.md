# VLSI-LAB-EXPERIMENTS-1

# DATE:10|02|24,12|02|24,24|02|24

# SIMULATION AND IMPLEMENTATION OF LOGIC GATES,ADDERS AND SUBRACTORS

# AIM:
To simulate and synthesis Logic Gates,Adders and Subtractor using Vivado 2023.1.

# APPARATUS REQUIRED:
Vivado 2023.1.

# PROCEDURE: 
```
STEP:1 Start the Xilinx navigator, Select and Name the New project.
STEP:2 Select the device family, device, package and speed.
STEP:3 Select new source in the New Project and select Verilog Module as the Source type.
STEP:4 Type the File Name and Click Next and then finish button. Type the code and save it.
STEP:5 Select the Behavioral Simulation in the Source Window and click the check syntax.
STEP:6 Click the simulation to simulate the program and give the inputs and verify the outputs as per the truth table.
STEP:7 Select the Implementation in the Sources Window and select the required file in the Processes Window.
STEP:8 Select Check Syntax from the Synthesize XST Process. Double Click in the Floorplan Area/IO/Logic-Post Synthesis process in the User Constraints process group. UCF(User constraint File) is obtained.
STEP:9 In the Design Object List Window, enter the pin location for each pin in the Loc column Select save from the File menu.
STEP:10 Double click on the Implement Design and double click on the Generate Programming File to create a bitstream of the design.(.v) file is converted into .bit file here. STEP:12 Load the Bit file into the 
        SPARTAN 6 FPGA STEP:11 On the board, by giving required input, the LEDs starts to glow light, indicating the output.
```

# Logic Diagram :

# Logic Gates:

![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/ee17970c-3ac9-4603-881b-88e2825f41a4)

```
# CODE

module logicgates(a,b,andgate,orgate,xorgate,nandgate,norgate,xnorgate,notgate);
input a,b;
output andgate,orgate,xorgate,nandgate,norgate,xnorgate,notgate;
and(andgate,a,b);
or(orgate,a,b);
xor(xorgate,a,b);
nand(nandgate,a,b);  
nor(norgate,a,b);
xnor(xnorgate,a,b);
not(notgate,a);
endmodule
```

# OUTPUT
<img width="838" alt="320503583-671893c0-3f17-4f78-a7de-7dcd11c016bb" src="https://github.com/priyaviswa13/VLSI-LAB-EXP-1/assets/166889783/55ba8a3c-fbd3-4993-988a-13fc1c433822">

# Half Adder:

![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/0e1ecb96-0c25-4556-832b-aeeedfdfe7b9)

```
# CODE

module HalfAdder(a,b,sum,carry);
input a,b;
output sum,carry;
xor (sum,a,b);
and (carry,a,b);
endmodule
```

# OUTPUT:
<img width="809" alt="320504329-3bf4e32e-680a-46f0-92ac-2ccdd182bf07" src="https://github.com/priyaviswa13/VLSI-LAB-EXP-1/assets/166889783/2fac0720-5b6f-4190-ae17-23804f0134a5">



# Full adder:

![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/9bb3964c-438f-469d-a3de-c1cca6f323fb)

```
#CODE

module FA(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire w1,w2,w3;
xor g1(w1,a,b);
and g2(w2,w1,cin);
and g3(w3,a,b);
xor g4(sum,w1,cin);
or g5(cout,w2,w3);
endmodule
```

# OUTPUT:
![330648496-c1712156-70cb-4a1f-b3e7-6beaef13327d](https://github.com/priyaviswa13/VLSI-LAB-EXP-1/assets/166889783/6239864d-802f-4739-a88d-2980854f0938)

# Half Subtractor:

![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/731470b7-eb4e-49f8-8bb7-2994052a7184)

```
#CODE:

module half_subtractor(D,Bo,A,B);
input A,B;
output D,Bo;
assign D=A^B;
assign Bo=(~A)&B;
endmodule
```

# OUTPUT:
![330648624-dba5f8eb-7ceb-4603-8c2f-4a01fef4c0ac](https://github.com/priyaviswa13/VLSI-LAB-EXP-1/assets/166889783/9bf01e8a-c94d-42df-88b0-b1fe54eabdfb)

# Full Subtractor:

![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/d66f874b-c1f2-44b3-a035-7149b56430c1)

```
# CODE:

module full_subtractor(a, b, c,D, Bout);
input a, b, c;
output D, Bout;
assign D = a^b^c;
assign Bout = (a & b) | ((a^ b) & c);
endmodule
Half Adder:
module half_adder(a,b,sum,carry);
input a,b;
output sum,carry;
or(sum,a,b);
and(carry,a,b);
endmodule
```

# OUTPUT:
![330648543-dcddc3f6-af10-49a4-a6fc-451f526b05b8](https://github.com/priyaviswa13/VLSI-LAB-EXP-1/assets/166889783/e4488894-3adc-44a1-98df-08fbca301779)

# 8 Bit Ripple Carry Adder

![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/7385a408-40a5-4203-8050-b72818622d79)

```
# CODE:

module fulladder(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
wire w1,w2,w3;
xor(w1,a,b);
xor(sum,w1,c);
and(w2,w1,c);
and(w3,a,b);
or(carry,w2,w3);
endmodule

module rca_8bit(a,b,cin,s,cout);
input [7:0]a,b;
input cin;
output [7:0]s;
output cout;
wire [7:1]w;
fulladder f1(a[0], b[0], cin, s[0], w[1]);
fulladder f2(a[1], b[1], w[1], s[1], w[2]);
fulladder f3(a[2], b[2], w[2], s[2], w[3]);
fulladder f4(a[3], b[3], w[3], s[3], w[4]);
fulladder f5(a[4], b[4], w[4], s[4], w[5]);
fulladder f6(a[5], b[5], w[5], s[5], w[6]);
fulladder f7(a[6], b[6], w[6], s[6], w[7]);
fulladder f8(a[7], b[7], w[7], s[7], cout);
endmodule
```

# OUTPUT:
![330648660-9d846717-e7a7-482d-8264-bf662ae7c8f4](https://github.com/priyaviswa13/VLSI-LAB-EXP-1/assets/166889783/d5dece70-7134-4191-857c-391c611b2002)

# RESULT:
Thus the simulate Logic Gates ,Adders and Subtractors is done and verified.

