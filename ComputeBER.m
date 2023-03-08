function BER = ComputeBER(bit_seq,rec_bit_seq,N_bits)
%
% Inputs:
%   bit_seq:     The input bit sequence
%   rec_bit_seq: The output bit sequence
% Outputs:
%   BER:         Computed BER
%
% This function takes the input and output bit sequences and computes the
% BER

%%% WRITE YOUR CODE HERE
No_falsebits=0;
Binary_falsebits=xor(bit_seq,rec_bit_seq);
for i=1:1:N_bits
    No_falsebits=No_falsebits+Binary_falsebits(i);
end
BER = No_falsebits/N_bits;
%%%
