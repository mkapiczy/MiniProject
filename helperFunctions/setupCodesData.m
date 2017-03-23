function [ codes ] = setupCodesData()
%%%% SETUP %%%%
codes = [];
%C_conv1
g1 = [1,1,1,1,0,0,1];
g2 = [1,0,1,1,0,1,1];
% g3 = [0,1,1,1,0,1,1]; %For use to derived codes
% g4 = [0,0,1,1,1,1,1]; %For use to derived codes

g1 = char(poly2sym(g1)); % = '1 + x + x^2 + x^3 + x^6'
g2 = char(poly2sym(g2)); % = '1 + x^2 + x^3 + x^5 + x^6'
% g3 = char(poly2sym(g3)); % = 'x + x^2 + x^3 + x^5 + x^6' %For use to derived codes
% g4 = char(poly2sym(g4)); % = 'x^2 + x^3 + x^4 + x^5 + x^6' %For use to derived codes


trellis_Conv1 = poly2trellis(7, {g1, g2});
code1 = MyCode (trellis_Conv1, 7, 'Conv1 (2, 1, 6)');
% trellis_Conv2 = poly2trellis(7, {g1, g2, g3}); %For use to derived codes
% code2 = MyCode (trellis_Conv2, 7, 'Conv1 (3, 1, 6)'); %For use to derived codes
% trellis_Conv3 = poly2trellis(7, {g1, g2, g3, g4}); %For use to derived codes
% code3 = MyCode (trellis_Conv3, 7, 'Conv1 (4, 1, 6)'); %For use to derived codes

C_conv2
g1 = [1,0,1,1];
g2 = [1,1,0,1];
g3 = [1,1,1,1];

g1 = char(poly2sym(g1)); % = '1 + x^2 + x^3'
g2 = char(poly2sym(g2)); % = '1 + x + x^3'
g3 = char(poly2sym(g3)); % = '1 + x + x^2 + x^3'

trellis_Conv2 = poly2trellis(4, {g1, g2, g3});
code2 = MyCode (trellis_Conv2, 4, 'Conv2');

%C_conv3
g1 = [1,0,1];
g2 = [1,1,1];
g3 = [1,1,1];
g4 = [1,1,1];

g1 = char(poly2sym(g1)); % = '1 + x^2'
g2 = char(poly2sym(g2)); % = '1 + x + x^2'
g3 = char(poly2sym(g3)); % = '1 + x + x^2'
g4 = char(poly2sym(g4)); % = '1 + x + x^2'

trellis_Conv3 = poly2trellis(3, {g1, g2, g3, g4});
code3 = MyCode (trellis_Conv3, 3, 'Conv3');

codes = [code1, code2, code3]

end
