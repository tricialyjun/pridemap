function map = healing(m)
%HEALING   Pride flag inspired sequential colormap 2/6
%   HEALING(M) returns an M-by-3 matrix containing an orange colormap.
%   HEALING, by itself, is the same length as the current figure's
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

r = linspace(1, 1.00, m);
g = linspace(0.95, 0.50, m);
b = linspace(0.9, 0.00, m);
map = ([r', g', b']);

end