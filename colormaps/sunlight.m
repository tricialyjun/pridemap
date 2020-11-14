function map = sunlight(m)
%SUNLIGHT   Pride flag inspired sequential colormap 3/6
%   SUNLIGHT(M) returns an M-by-3 matrix containing a yellow colormap.
%   SUNLIGHT, by itself, is the same length as the current figure's
%   colormap. If no figure exists, MATLAB uses the length of the
%   default colormap.
%
%   TLYJ 20201113

if nargin < 1
    f = get(groot,'CurrentFigure');
    if isempty(f)
        m = size(get(groot,'DefaultFigureColormap'),1);
    else
        m = size(f.Colormap,1);
    end
end

r = linspace(1.0000, 1.00, m);
g = linspace(0.9850, 0.85, m);
b = linspace(0.9150, 0.15, m);
map = ([r', g', b']);

end