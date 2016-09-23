function signedcos = acos2d(alpha, beta)
%ACOS2D      4-quadrant arccosine function, in degrees. 
%
%   ACOS2D(alpha, beta) computes the four-quadrant arccosine of the amgle 
%   [alpha]. For arguments |alpha| > 1, the result is NaN. The resulting 
%   angle is not uniquely determined by alpha, nor by the lengths or 
%   order of the sides of the triangle (as in ATAN2), so an additional 
%   argument [beta] is required. If [beta] < 180�, the small angle 
%   (0� <= alpha <= 180�) is returned. If [beta] > 180�, the large angle
%   (180� < alpha < 360�) is returned. 
%
%   See also acos2.

    % Please report bugs and inquiries to:
    %
    % Name       : Rody P.S. Oldenhuis
    % E-mail     : oldenhuis@gmail.com    (personal)
    %              oldenhuis@luxspace.lu  (professional)
    % Affiliation: LuxSpace s�rl
    % Licence    : BSD


    % If you find this work useful, please consider a donation:
    % https://www.paypal.me/RodyO/3.5

    % compute 4-quadrant cosine by calling ACOS2 directly
    signedcos = acos2(alpha, beta)*180/pi;

end
