function map = panpolybi(m)
%PANPOLYBI   Pride flag inspired qualitative color series
%   PANPOLYBI(M) returns an M-by-3 matrix containing a colormap based on
%   the pansexual, polysexual and bisexual flag
%   PANPOLYBI, by itself, is the same length as the current figure's
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

values = [
   0.87046   0.39945   0.69182
   0.85203   0.77010   0.21286
   0.22959   0.62799   0.86383
   0.19727   0.75908   0.46459
   0.80718   0.25872   0.39615
   0.59695   0.39669   0.58669
   0.18139   0.33334   0.63726
];

P = size(values,1);
map = values(rem(0:m-1,P)+1,:);

end

