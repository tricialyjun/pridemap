function map = spirit(m)
%SPIRIT   Pride flag inspired sequential colormap 6/6
%   SPIRIT(M) returns an M-by-3 matrix containing a purple colormap.
%   SPIRIT, by itself, is the same length as the current figure's
%   colormap. If no figure exists, MATLAB uses the length of the
%   default colormap.
%
%   ----------
%   Tricia LYJ, 20201117
%   @tricialyjun

if nargin < 1
    f = get(groot,'CurrentFigure');
    if isempty(f)
        m = size(get(groot,'DefaultFigureColormap'),1);
    else
        m = size(f.Colormap,1);
    end
end

r = linspace(0.9450, 0.4500, m);
g = linspace(0.9050, 0.0500, m);
b = linspace(0.9500, 0.5000, m);
map = ([r', g', b']);

end