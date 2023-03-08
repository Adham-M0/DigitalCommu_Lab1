function rec_bit_seq = DecodeBitsFromSamples(rec_sample_seq,case_type,p,N_bits)
%
% Inputs:
%   rec_sample_seq: The input sample sequence to the channel
%   case_type:      The sampling frequency used to generate the sample sequence
%   fs:             The bit flipping probability
% Outputs:
%   rec_sample_seq: The sequence of sample sequence after passing through the channel
%
% This function takes the sample sequence after passing through the
% channel, and decodes from it the sequence of bits based on the considered
% case and the sampling frequence

if (nargin <= 2)
    p = 1;
end

switch case_type
    
    case 'part_1'
        %%% WRITE YOUR CODE FOR PART 1 HERE
        %rec_bit_seq = BSC(rec_sample_seq,1,p);
        rec_bit_seq= rec_sample_seq;
        for i=0:1:N_bits
            if (p >= .5)
                rec_bit_seq(i)=~rec_bit_seq(i);
            end
        end
        %%%
    case 'part_2'
        %%% WRITE YOUR CODE FOR PART 2 HERE
        
        %%%
    case 'part_3'
        %%% WRITE YOUR CODE FOR PART 3 HERE
        
        %%%
end