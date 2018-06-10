function [a1, b1, c1, a2, b2, c2] = aaa(A, B, C)
%AAA  gives both solutions to the angle-angle-angle problem, in radians.
%
%   AAA(A, B, C) will result in NaNs if the existence condition
%   |pi - |A|-|B|| <= |C| <= pi - ||A| - |B||
%   is not met.
%
%   See also AAAD.

    % Please report bugs and inquiries to:
    %
    % Name   : Rody P.S. Oldenhuis
    % E-mail : oldenhuis@gmail.com
    % Licence: 2-clause BSD (See License.txt)

    % If you find this work useful, please consider a donation:
    % https://www.paypal.me/RodyO/3.5

    % first solution
    a1 = acos2( (cos(A) + cos(B).*cos(C)) ./ (sin(B).*sin(C)),  A );
    b1 = acos2( (cos(B) + cos(A).*cos(C)) ./ (sin(A).*sin(C)),  B );
    c1 = acos2( (cos(C) + cos(A).*cos(B)) ./ (sin(A).*sin(B)),  C );

    % second solution
    a2 = 2*pi - a1;
    b2 = 2*pi - b1;
    c2 = 2*pi - c1;

    % check constraints
    indices = ( ...
        abs(pi - abs(A)-abs(B)) > abs(C) | ...
        abs(C) > pi - abs(abs(A)-abs(B)) );
    a1(indices) = NaN;    a2(indices) = NaN;
    b1(indices) = NaN;    b2(indices) = NaN;
    c1(indices) = NaN;    c2(indices) = NaN;

end
