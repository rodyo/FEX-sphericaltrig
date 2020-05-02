[![View Oblique Spherical Triangle toolbox on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/23075-oblique-spherical-triangle-toolbox)

[![Donate to Rody](https://i.stack.imgur.com/bneea.png)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=4M7RMVNMKAXXQ&source=url)

# FEX-sphericaltrig

This toolbox can solve any of the 6 possible subproblems associated with an oblique spherical triangle, when only 3 of the 6 angles are known.
The toolbox basically is an implementation of the set of tools developed in [Wertz, 2001], which aimed to fully automize the procedure and do away with the need of user intervention.

EXAMPLE:

[b1, c1, C1, b2, c2, C2] = aas(A, B, a)

gives both solutions for the sides b and c and the angle C, when given angles A, B and side a. This particular problem can be called the Angle-Angle-Side problem, hence the name.

Both degrees and radians are implemented, the difference is indicating by appending a 'd' to the function name. The above example expects and returns radians, whereas

[b1, c1, C1, b2, c2, C2] = aasd(A, B, a)

expects and returns degrees.

[Wertz, 2001]
James R. Wertz, Mission Geometry: Orbit and Constellation Design and Management, 2001. Published by Microcosm and Kluwer Academic Publishers.

If you find this work useful, please consider [a donation](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=4M7RMVNMKAXXQ&source=url).
