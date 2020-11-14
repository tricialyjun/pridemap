function map = aceflag(m)
%ACEFLAG   Asexual flag inspired diverging map
%   ACEFLAG(M) returns an M-by-3 matrix containing a purple-white-black
%   colormap.
%   ACEFLAG, by itself, is the same length as the current figure's
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
   0.25540   0.00000   0.25540
   0.26322   0.00758   0.26322
   0.27105   0.01516   0.27105
   0.27888   0.02274   0.27888
   0.28671   0.03032   0.28671
   0.29453   0.03791   0.29453
   0.30236   0.04549   0.30236
   0.31019   0.05307   0.31019
   0.31802   0.06065   0.31802
   0.32584   0.06823   0.32584
   0.33367   0.07581   0.33367
   0.34150   0.08339   0.34150
   0.34933   0.09097   0.34933
   0.35715   0.09855   0.35715
   0.36498   0.10613   0.36498
   0.37281   0.11372   0.37281
   0.38064   0.12130   0.38064
   0.38847   0.12888   0.38847
   0.39629   0.13646   0.39629
   0.40412   0.14404   0.40412
   0.41195   0.15162   0.41195
   0.41978   0.15920   0.41978
   0.42760   0.16678   0.42760
   0.43543   0.17436   0.43543
   0.44326   0.18194   0.44326
   0.45109   0.18953   0.45109
   0.45891   0.19711   0.45891
   0.46674   0.20469   0.46674
   0.47457   0.21227   0.47457
   0.48240   0.21985   0.48240
   0.49022   0.22743   0.49022
   0.49805   0.23501   0.49805
   0.50588   0.24259   0.50588
   0.51371   0.25017   0.51371
   0.52153   0.25775   0.52153
   0.52936   0.26534   0.52936
   0.53719   0.27292   0.53719
   0.54502   0.28050   0.54502
   0.55284   0.28808   0.55284
   0.56067   0.29566   0.56067
   0.56850   0.30324   0.56850
   0.57633   0.31082   0.57633
   0.58415   0.31840   0.58415
   0.59198   0.32598   0.59198
   0.59981   0.33356   0.59981
   0.60764   0.34115   0.60764
   0.61546   0.34873   0.61546
   0.62329   0.35631   0.62329
   0.63112   0.36389   0.63112
   0.63895   0.37147   0.63895
   0.64677   0.37905   0.64677
   0.65460   0.38663   0.65460
   0.66243   0.39421   0.66243
   0.67026   0.40179   0.67026
   0.67808   0.40937   0.67808
   0.68591   0.41696   0.68591
   0.69374   0.42454   0.69374
   0.70157   0.43212   0.70157
   0.70939   0.43970   0.70939
   0.71722   0.44728   0.71722
   0.72505   0.45486   0.72505
   0.73288   0.46244   0.73288
   0.74070   0.47002   0.74070
   0.74853   0.47760   0.74853
   0.75537   0.48532   0.75537
   0.75926   0.49346   0.75926
   0.76314   0.50159   0.76314
   0.76702   0.50973   0.76702
   0.77091   0.51787   0.77091
   0.77479   0.52600   0.77479
   0.77867   0.53414   0.77867
   0.78255   0.54227   0.78255
   0.78644   0.55041   0.78644
   0.79032   0.55854   0.79032
   0.79420   0.56668   0.79420
   0.79809   0.57482   0.79809
   0.80197   0.58295   0.80197
   0.80585   0.59109   0.80585
   0.80974   0.59922   0.80974
   0.81362   0.60736   0.81362
   0.81750   0.61549   0.81750
   0.82138   0.62363   0.82138
   0.82527   0.63177   0.82527
   0.82915   0.63990   0.82915
   0.83303   0.64804   0.83303
   0.83692   0.65617   0.83692
   0.84080   0.66431   0.84080
   0.84468   0.67244   0.84468
   0.84856   0.68058   0.84856
   0.85245   0.68872   0.85245
   0.85633   0.69685   0.85633
   0.86021   0.70499   0.86021
   0.86410   0.71312   0.86410
   0.86798   0.72126   0.86798
   0.87186   0.72939   0.87186
   0.87575   0.73753   0.87575
   0.87963   0.74567   0.87963
   0.88351   0.75380   0.88351
   0.88739   0.76194   0.88739
   0.89128   0.77007   0.89128
   0.89516   0.77821   0.89516
   0.89904   0.78634   0.89904
   0.90293   0.79448   0.90293
   0.90681   0.80262   0.90681
   0.91069   0.81075   0.91069
   0.91457   0.81889   0.91457
   0.91846   0.82702   0.91846
   0.92234   0.83516   0.92234
   0.92622   0.84329   0.92622
   0.93011   0.85143   0.93011
   0.93399   0.85957   0.93399
   0.93787   0.86770   0.93787
   0.94176   0.87584   0.94176
   0.94564   0.88397   0.94564
   0.94952   0.89211   0.94952
   0.95340   0.90024   0.95340
   0.95729   0.90838   0.95729
   0.96117   0.91652   0.96117
   0.96505   0.92465   0.96505
   0.96894   0.93279   0.96894
   0.97282   0.94092   0.97282
   0.97670   0.94906   0.97670
   0.98059   0.95720   0.98059
   0.98447   0.96533   0.98447
   0.98835   0.97347   0.98835
   0.99223   0.98160   0.99223
   0.99612   0.98974   0.99612
   1.00000   0.99787   1.00000
   0.99914   0.99914   0.99914
   0.99353   0.99353   0.99353
   0.98792   0.98792   0.98792
   0.98231   0.98231   0.98231
   0.97670   0.97670   0.97670
   0.97109   0.97109   0.97109
   0.96548   0.96548   0.96548
   0.95988   0.95988   0.95988
   0.95427   0.95427   0.95427
   0.94866   0.94866   0.94866
   0.94305   0.94305   0.94305
   0.93744   0.93744   0.93744
   0.93183   0.93183   0.93183
   0.92622   0.92622   0.92622
   0.92062   0.92062   0.92062
   0.91501   0.91501   0.91501
   0.90940   0.90940   0.90940
   0.90379   0.90379   0.90379
   0.89818   0.89818   0.89818
   0.89257   0.89257   0.89257
   0.88696   0.88696   0.88696
   0.88135   0.88135   0.88135
   0.87575   0.87575   0.87575
   0.87014   0.87014   0.87014
   0.86453   0.86453   0.86453
   0.85892   0.85892   0.85892
   0.85331   0.85331   0.85331
   0.84770   0.84770   0.84770
   0.84209   0.84209   0.84209
   0.83648   0.83648   0.83648
   0.83088   0.83088   0.83088
   0.82527   0.82527   0.82527
   0.81966   0.81966   0.81966
   0.81405   0.81405   0.81405
   0.80844   0.80844   0.80844
   0.80283   0.80283   0.80283
   0.79722   0.79722   0.79722
   0.79161   0.79161   0.79161
   0.78601   0.78601   0.78601
   0.78040   0.78040   0.78040
   0.77479   0.77479   0.77479
   0.76918   0.76918   0.76918
   0.76357   0.76357   0.76357
   0.75796   0.75796   0.75796
   0.75235   0.75235   0.75235
   0.74674   0.74674   0.74674
   0.74114   0.74114   0.74114
   0.73553   0.73553   0.73553
   0.72992   0.72992   0.72992
   0.72431   0.72431   0.72431
   0.71870   0.71870   0.71870
   0.71309   0.71309   0.71309
   0.70748   0.70748   0.70748
   0.70188   0.70188   0.70188
   0.69627   0.69627   0.69627
   0.69066   0.69066   0.69066
   0.68505   0.68505   0.68505
   0.67944   0.67944   0.67944
   0.67383   0.67383   0.67383
   0.66822   0.66822   0.66822
   0.66261   0.66261   0.66261
   0.65701   0.65701   0.65701
   0.65140   0.65140   0.65140
   0.64579   0.64579   0.64579
   0.63680   0.63680   0.63680
   0.62670   0.62670   0.62670
   0.61659   0.61659   0.61659
   0.60648   0.60648   0.60648
   0.59637   0.59637   0.59637
   0.58626   0.58626   0.58626
   0.57616   0.57616   0.57616
   0.56605   0.56605   0.56605
   0.55594   0.55594   0.55594
   0.54583   0.54583   0.54583
   0.53572   0.53572   0.53572
   0.52562   0.52562   0.52562
   0.51551   0.51551   0.51551
   0.50540   0.50540   0.50540
   0.49529   0.49529   0.49529
   0.48518   0.48518   0.48518
   0.47508   0.47508   0.47508
   0.46497   0.46497   0.46497
   0.45486   0.45486   0.45486
   0.44475   0.44475   0.44475
   0.43464   0.43464   0.43464
   0.42454   0.42454   0.42454
   0.41443   0.41443   0.41443
   0.40432   0.40432   0.40432
   0.39421   0.39421   0.39421
   0.38410   0.38410   0.38410
   0.37400   0.37400   0.37400
   0.36389   0.36389   0.36389
   0.35378   0.35378   0.35378
   0.34367   0.34367   0.34367
   0.33356   0.33356   0.33356
   0.32346   0.32346   0.32346
   0.31335   0.31335   0.31335
   0.30324   0.30324   0.30324
   0.29313   0.29313   0.29313
   0.28302   0.28302   0.28302
   0.27292   0.27292   0.27292
   0.26281   0.26281   0.26281
   0.25270   0.25270   0.25270
   0.24259   0.24259   0.24259
   0.23248   0.23248   0.23248
   0.22238   0.22238   0.22238
   0.21227   0.21227   0.21227
   0.20216   0.20216   0.20216
   0.19205   0.19205   0.19205
   0.18194   0.18194   0.18194
   0.17184   0.17184   0.17184
   0.16173   0.16173   0.16173
   0.15162   0.15162   0.15162
   0.14151   0.14151   0.14151
   0.13140   0.13140   0.13140
   0.12130   0.12130   0.12130
   0.11119   0.11119   0.11119
   0.10108   0.10108   0.10108
   0.09097   0.09097   0.09097
   0.08086   0.08086   0.08086
   0.07076   0.07076   0.07076
   0.06065   0.06065   0.06065
   0.05054   0.05054   0.05054
   0.04043   0.04043   0.04043
   0.03032   0.03032   0.03032
   0.02022   0.02022   0.02022
   0.01011   0.01011   0.01011
   0.00000   0.00000   0.00000
    ];

P   = size(values,1);
map = interp1(1:size(values,1), values, linspace(1,P,m), 'linear');

end