function [c1, A1, B1, c2, A2, B2] = sasd(a, C, b)
%SASD   gives both solutions to the side-angle-side problem, in degrees.
%
%   SASD(a, C, b) returns the remaining unknowns of the spherical triangle,
%   [c1, A1, B1, c2, A2, B2].
%
%   See also SAS, ACOS2.

    % Please report bugs and inquiries to:
    %
    % Name   : Rody P.S. Oldenhuis
    % E-mail : oldenhuis@gmail.com
    % Licence: 2-clause BSD (See License.txt)

    % If you find this work useful, please consider a donation:
    % https://www.paypal.me/RodyO/3.5

    % find both solutions by calling sas directly
    r2d = 180/pi;
    d2r = 1/r2d;
    [c1, A1, B1, c2, A2, B2] = sas(a*d2r, C*d2r, b*d2r);
    [c1, A1, B1, c2, A2, B2] = deal(c1*r2d, A1*r2d, B1*r2d, c2*r2d, A2*r2d, B2*r2d);

end
