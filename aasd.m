function [b1, c1, C1, b2, c2, C2] = aasd(A, B, a)
%AASD   gives both solutions to the angle-angle-side problem, in degrees.
%
%   AASD(A, B, a) may result in a vector fliled with NaNs if the existence
%   condition |sin(B)sin(a)| <= |sin(A)| is not met. This function uses the
%   Middle Side Law function MSL.m and Middle Angle Law function MAL.m to
%   determine the solutions.
%
%   See also MSL, MAL, AASD.

    % Please report bugs and inquiries to:
    %
    % Name   : Rody P.S. Oldenhuis
    % E-mail : oldenhuis@gmail.com
    % Licence: 2-clause BSD (See License.txt)

    % If you find this work useful, please consider a donation:
    % https://www.paypal.me/RodyO/3.5


    % find both solutions by calling aas directly
    r2d = 180/pi;
    d2r = 1/r2d;
    [b1, c1, C1, b2, c2, C2] = aas(A*d2r, B*d2r, a*d2r);
    [b1, c1, C1, b2, c2, C2] = deal(b1*r2d, c1*r2d, C1*r2d, b2*r2d, c2*r2d, C2*r2d);

end
