% This script is the solution to the problem of counting the times that a
% small string appears in a large string by removing the letters without 
% changing the order.
%
% Michael Alvarez
% michael.alvarez2@upr.edu

clc
clear 
close all

small_st = 'ABC' ;
large_st = 'ABCBABC' ;

disp(' ')
disp("smallString: " + small_st)
disp("largeString: " + large_st)

cont = 0 ;      % counter for smallString in largeString
cont_pos = 0 ;  % counter all posibilities

n = length( large_st ) ; % length of the large string

for l1 = 1 : n - 2  % loop for the first letter

    for l2 = l1+1 : n - 1  % loop for the second letter

        for l3 = l2+1 : n  % loop for the third letter

            v = [l1, l2, l3] ;       % index for the new string
            new_st = large_st( v ) ; % create the new string
            
            cont_pos = cont_pos + 1 ; % count all posibilities

            if strcmp( new_st , small_st ) % compare with the smallString
                
                disp(v)            % if true, show the index
                cont = cont + 1 ;  % increase counter smallString appears

            end
        end
    end    
end

disp("smallString appears: " + cont + " times.")
disp("Possibilities: " + cont_pos)