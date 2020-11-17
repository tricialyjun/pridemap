function map = life(m)
%LIFE   Pride flag inspired sequential colormap 1/6
%   LIFE(M) returns an M-by-3 matrix containing a red colormap.
%   LIFE, by itself, is the same length as the current figure's
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

r = linspace(0.99 ,0.90, m);
g = linspace(0.905 ,0.05, m);
b = linspace(0.905 ,0.05, m);
map = ([r', g', b']);
end