
module digit_rom (
input logic [7:0] address,
output logic [15:0] data
);
always_comb
begin
case (address)
0 : data  = 16'b0000000000000000;
1 : data  = 16'b0000000000000000;
2 : data  = 16'b0000011111000000;
3 : data  = 16'b0000111111000000;
4 : data  = 16'b0001111111000000;
5 : data  = 16'b0001111111000000;
6 : data  = 16'b0000001111000000;
7 : data  = 16'b0000001111000000;
8 : data  = 16'b0000001111000000;
9 : data  = 16'b0000001111000000;
10 : data = 16'b0000001111000000;
11 : data = 16'b0000001111000000;
12 : data = 16'b0011111111111100;
13 : data = 16'b0011111111111100;
14 : data = 16'b0011111111111100;
15 : data = 16'b0000000000000000;

16 : data = 16'b0000000000000000; 
17 : data = 16'b0000000000000000; 
18 : data = 16'b0000000000000000; 
19 : data = 16'b0011111111111100; 
20 : data = 16'b0111111111111110; 
21 : data = 16'b0011111111111110; 
22 : data = 16'b0000000000111110; 
23 : data = 16'b0000000000111110; 
24 : data = 16'b0001111111111110; 
25 : data = 16'b0011111111111110; 
26 : data = 16'b0111111111111110; 
27 : data = 16'b0111111000000000; 
28 : data = 16'b0111111111111000; 
29 : data = 16'b0011111111111100; 
30 : data = 16'b0001111111111000; 
31 : data = 16'b0000000000000000;

32 : data = 16'b0000000000000000;
33 : data = 16'b0000000000000000; 
34 : data = 16'b0000000000000000; 
35 : data = 16'b0111111111111100; 
36 : data = 16'b0111111111111100; 
37 : data = 16'b0111111111111100; 
38 : data = 16'b0000000000111100; 
39 : data = 16'b0000000000111100; 
40 : data = 16'b0001111111111100; 
41 : data = 16'b0001111111111100; 
42 : data = 16'b0000000000111100; 
43 : data = 16'b0000000000111100; 
44 : data = 16'b0111111111111100; 
45 : data = 16'b0111111111111100; 
46 : data = 16'b0111111111111100;
47 : data = 16'b0000000000000000;

48 : data = 16'b0000000000000000; 
49 : data = 16'b0000000000000000; 
50 : data = 16'b0000000000000000; 
51 : data = 16'b0011100000011100; 
52 : data = 16'b0011100000011100; 
53 : data = 16'b0011100000011100; 
54 : data = 16'b0011100000011100; 
55 : data = 16'b0011100000011100; 
56 : data = 16'b0011111111111100; 
57 : data = 16'b0011111111111100; 
58 : data = 16'b0000000000011100; 
59 : data = 16'b0000000000011100; 
60 : data = 16'b0000000000011100; 
61 : data = 16'b0000000000011100; 
62 : data = 16'b0000000000011100; 
63 : data = 16'b0000000000000000;

64 : data = 16'b0000000000000000;
65 : data = 16'b0000000000000000;
66 : data = 16'b0011111111111000;
67 : data = 16'b0011111111111000;
68 : data = 16'b0011110000000000;
69 : data = 16'b0011110000000000;
70 : data = 16'b0011110000000000;
71 : data = 16'b0011111111111000;
72 : data = 16'b0011111111111100;
73 : data = 16'b0000000000111100;
74 : data = 16'b0000000000111100;
75 : data = 16'b0000000000111100;
76 : data = 16'b0000000000111100;
77 : data = 16'b0011111111111100;
78 : data = 16'b0011111111111100;
79 : data = 16'b0000000000000000;
 
80 : data = 16'b0000000000000000;
81 : data = 16'b0000000000000000;
82 : data = 16'b0011111111111000;
83 : data = 16'b0011111111111000;
84 : data = 16'b0011110000000000;
85 : data = 16'b0011110000000000;
86 : data = 16'b0011110000000000;
87 : data = 16'b0011111111111100;
88 : data = 16'b0011111111111100;
89 : data = 16'b0011110000111100;
90 : data = 16'b0011110000111100;
91 : data = 16'b0011110000111100;
92 : data = 16'b0011110000111100;
93 : data = 16'b0011111111111100;
94 : data = 16'b0011111111111100;
95 : data = 16'b0000000000000000;
 
96  : data = 16'b0000000000000000;
97  : data = 16'b0000000000000000;
98  : data = 16'b0011111111111100;
99  : data = 16'b0011111111111100;
100 : data = 16'b0011111111111100;
101 : data = 16'b0000000000111100;
102 : data = 16'b0000000000111100;
103 : data = 16'b0000000000111100;
104 : data = 16'b0000000000111100;
105 : data = 16'b0000000000111100;
106 : data = 16'b0000000000111100;
107 : data = 16'b0000000000111100;
108 : data = 16'b0000000000111100;
109 : data = 16'b0000000000111100;
110 : data = 16'b0000000000111100;
111 : data = 16'b0000000000000000;

112 : data = 16'b0000000000000000;
113 : data = 16'b0000000000000000;
114 : data = 16'b0011111111111100;
115 : data = 16'b0011111111111100;
116 : data = 16'b0011110000111100;
117 : data = 16'b0011110000111100;
118 : data = 16'b0011110000111100;
119 : data = 16'b0011111111111100;
120 : data = 16'b0011111111111100;
121 : data = 16'b0011110000111100;
122 : data = 16'b0011110000111100;
123 : data = 16'b0011110000111100;
124 : data = 16'b0011110000111100;
125 : data = 16'b0011111111111100;
126 : data = 16'b0011111111111100;
127 : data = 16'b0000000000000000;

128 : data = 16'b0000000000000000;
129 : data = 16'b0000000000000000;
130 : data = 16'b0011111111111100;
131 : data = 16'b0011111111111100;
132 : data = 16'b0011110000111100;
133 : data = 16'b0011110000111100;
134 : data = 16'b0011110000111100;
135 : data = 16'b0011111111111100;
136 : data = 16'b0011111111111100;
137 : data = 16'b0000000000111100;
138 : data = 16'b0000000000111100;
139 : data = 16'b0000000000111100;
140 : data = 16'b0000000000111100;
141 : data = 16'b0011111111111100;
142 : data = 16'b0011111111111100;
143 : data = 16'b0000000000000000;

144 : data  = 16'b0000000000000000;
145 : data  = 16'b0000000000000000;
146 : data  = 16'b0001111111100000;
147 : data  = 16'b0011100000111000;
148:  data  = 16'b0111000000011100;
149 : data  = 16'b1110000000011100;
150 : data  = 16'b1110000000011100;
151 : data  = 16'b1110000000011100;
152 : data  = 16'b1110000000011100;
153 : data  = 16'b1110000000011100;
154 : data  = 16'b1110000000011100;
155 : data  = 16'b1110000000011100;
156 : data  = 16'b0111000000011100;
157 : data  = 16'b0011100000111000;
158 : data  = 16'b0001111111100000;
159 : data  = 16'b0000000000000000;

default: data = 16'b0000000000000000;
endcase















end
endmodule