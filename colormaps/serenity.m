function map = serenity(m)
%SERENITY   Pride flag inspired sequential colormap 5/6
%   SERENITY(M) returns an M-by-3 matrix containing a blue colormap.
%   SERENITY, by itself, is the same length as the current figure's
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

r = linspace(0.9000, 0.00, m);
g = linspace(0.9350, 0.35, m);
b = linspace(0.9900, 0.90, m);
map = ([r', g', b']);

end