function [result] = TR_doubleIntMain(f, a, b, N, c, d, M)
% Author: Adrian Ciesla 313207

% Function approximates a double integral of a two-parameter function ...
% using compound trapezoidal quadrature on X-axis and compound ...
% rectangle quadrature on Y-axis.
% INPUT:
%       f - handle to a two-parameter function, which double integral ... 
%           is going to be approximated
%       a - start of the interval on X-axis
%       b - end of the interval on X-axis
%       N - number of [a b] interval divisions
%       c - start of the interval on Y-axis
%       d - end of the interval on Y-axis
%       M - number of [c d] interval divisions
% OUTPUT:
%       result - approximated double integral of f function on ...
%                [a b] x [c d] interval
    
    % Initializing subintervals length
    H1 = (b - a)/N;
    H2 = (d - c)/M;
    
    % Initializing sums needed to calculate a double integral
    sa = 0;
    sb = 0;
    sx = 0;
    
    % Calculating all needed sums
    for i=0:M - 1
        sa = sa + H2*f(a,c + i*H2 + H2/2);
    end
    
    for i=0:M - 1
        sb = sb + H2*f(b,c+i*H2 + H2/2);
    end
    
    for i=1:N - 1
        for j=0:M - 1
            sx = sx + H2 * f(a + i*H1, c + j*H2 + H2/2);
        end
    end
    
    % Final result
    result = H1/2*(sa + sb + 2*sx);
    
end

