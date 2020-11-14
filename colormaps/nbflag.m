function map = nbflag(m)
%NBFLAG   Nonbinary flag inspired circular map
%   NBFLAG(M) returns an M-by-3 matrix containing a 
%   black-purple-white-yellow-black colormap.
%   NBFLAG, by itself, is the same length as the current figure's
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
   0.16229   0.18968   0.21483
   0.15905   0.18456   0.22053
   0.15631   0.17978   0.22645
   0.15406   0.17535   0.23258
   0.15231   0.17128   0.23893
   0.15105   0.16757   0.24548
   0.15028   0.16421   0.25223
   0.15000   0.16121   0.25919
   0.15021   0.15856   0.26634
   0.15090   0.15627   0.27367
   0.15207   0.15434   0.28120
   0.15371   0.15277   0.28890
   0.15582   0.15155   0.29678
   0.15839   0.15069   0.30483
   0.16141   0.15017   0.31305
   0.16488   0.15000   0.32143
   0.16879   0.15018   0.32997
   0.17312   0.15069   0.33865
   0.17787   0.15155   0.34749
   0.18303   0.15273   0.35646
   0.18858   0.15425   0.36557
   0.19452   0.15609   0.37480
   0.20083   0.15825   0.38416
   0.20750   0.16072   0.39364
   0.21452   0.16350   0.40323
   0.22187   0.16657   0.41292
   0.22954   0.16995   0.42271
   0.23751   0.17361   0.43260
   0.24578   0.17755   0.44258
   0.25432   0.18176   0.45263
   0.26313   0.18625   0.46276
   0.27218   0.19099   0.47296
   0.28146   0.19598   0.48322
   0.29095   0.20121   0.49354
   0.30065   0.20668   0.50391
   0.31053   0.21238   0.51432
   0.32057   0.21829   0.52477
   0.33077   0.22442   0.53524
   0.34110   0.23075   0.54575
   0.35155   0.23727   0.55627
   0.36211   0.24398   0.56680
   0.37275   0.25086   0.57733
   0.38347   0.25791   0.58786
   0.39424   0.26512   0.59839
   0.40506   0.27248   0.60889
   0.41590   0.27998   0.61938
   0.42676   0.28762   0.62984
   0.43761   0.29538   0.64026
   0.44845   0.30325   0.65065
   0.45926   0.31124   0.66098
   0.47002   0.31932   0.67127
   0.48073   0.32750   0.68149
   0.49137   0.33576   0.69164
   0.50193   0.34410   0.70173
   0.51239   0.35251   0.71173
   0.52275   0.36098   0.72165
   0.53300   0.36950   0.73148
   0.54312   0.37807   0.74121
   0.55311   0.38668   0.75084
   0.56295   0.39533   0.76036
   0.57265   0.40400   0.76976
   0.58218   0.41269   0.77905
   0.59155   0.42139   0.78821
   0.60074   0.43011   0.79723
   0.60975   0.43883   0.80612
   0.61857   0.44754   0.81487
   0.62721   0.45625   0.82347
   0.63565   0.46495   0.83192
   0.64389   0.47363   0.84020
   0.65193   0.48228   0.84833
   0.65976   0.49092   0.85629
   0.66739   0.49952   0.86407
   0.67481   0.50809   0.87168
   0.68202   0.51663   0.87910
   0.68902   0.52512   0.88634
   0.69581   0.53358   0.89339
   0.70240   0.54199   0.90024
   0.70877   0.55035   0.90689
   0.71495   0.55866   0.91334
   0.72092   0.56692   0.91959
   0.72669   0.57513   0.92562
   0.73227   0.58328   0.93144
   0.73766   0.59138   0.93704
   0.74286   0.59941   0.94242
   0.74788   0.60739   0.94757
   0.75272   0.61531   0.95250
   0.75739   0.62317   0.95720
   0.76189   0.63097   0.96166
   0.76624   0.63871   0.96589
   0.77043   0.64639   0.96988
   0.77448   0.65401   0.97363
   0.77838   0.66156   0.97714
   0.78216   0.66906   0.98041
   0.78581   0.67649   0.98343
   0.78935   0.68386   0.98620
   0.79278   0.69117   0.98872
   0.79611   0.69843   0.99099
   0.79934   0.70562   0.99301
   0.80249   0.71275   0.99477
   0.80557   0.71983   0.99628
   0.80857   0.72685   0.99754
   0.81152   0.73381   0.99854
   0.81441   0.74071   0.99928
   0.81726   0.74756   0.99977
   0.82007   0.75435   1.00000
   0.82285   0.76109   0.99997
   0.82561   0.76777   0.99969
   0.82835   0.77439   0.99915
   0.83109   0.78096   0.99836
   0.83382   0.78748   0.99731
   0.83656   0.79394   0.99601
   0.83931   0.80035   0.99445
   0.84208   0.80670   0.99264
   0.84487   0.81299   0.99058
   0.84769   0.81923   0.98827
   0.85053   0.82541   0.98571
   0.85342   0.83153   0.98290
   0.85634   0.83760   0.97985
   0.85931   0.84360   0.97655
   0.86232   0.84955   0.97302
   0.86538   0.85543   0.96924
   0.86850   0.86124   0.96523
   0.87166   0.86699   0.96099
   0.87488   0.87267   0.95651
   0.87815   0.87828   0.95180
   0.88148   0.88382   0.94687
   0.88486   0.88928   0.94172
   0.88829   0.89466   0.93634
   0.89177   0.89996   0.93075
   0.89529   0.90517   0.92495
   0.89887   0.91030   0.91893
   0.90249   0.91533   0.91271
   0.90614   0.92027   0.90629
   0.90983   0.92511   0.89967
   0.91355   0.92984   0.89286
   0.91730   0.93447   0.88586
   0.92106   0.93898   0.87867
   0.92484   0.94338   0.87129
   0.92862   0.94765   0.86374
   0.93240   0.95180   0.85602
   0.93618   0.95582   0.84813
   0.93993   0.95970   0.84008
   0.94367   0.96343   0.83187
   0.94737   0.96702   0.82350
   0.95103   0.97046   0.81499
   0.95464   0.97374   0.80633
   0.95819   0.97685   0.79753
   0.96167   0.97979   0.78860
   0.96506   0.98256   0.77955
   0.96837   0.98515   0.77037
   0.97157   0.98754   0.76107
   0.97466   0.98975   0.75166
   0.97763   0.99176   0.74215
   0.98046   0.99356   0.73254
   0.98315   0.99516   0.72283
   0.98568   0.99653   0.71303
   0.98805   0.99769   0.70315
   0.99023   0.99862   0.69319
   0.99222   0.99932   0.68316
   0.99402   0.99978   0.67307
   0.99559   1.00000   0.66292
   0.99695   0.99997   0.65271
   0.99807   0.99969   0.64246
   0.99895   0.99915   0.63217
   0.99957   0.99836   0.62184
   0.99992   0.99729   0.61148
   1.00000   0.99596   0.60110
   0.99979   0.99435   0.59071
   0.99929   0.99247   0.58030
   0.99849   0.99030   0.56989
   0.99737   0.98785   0.55948
   0.99594   0.98512   0.54908
   0.99418   0.98210   0.53870
   0.99208   0.97878   0.52834
   0.98964   0.97518   0.51800
   0.98685   0.97128   0.50770
   0.98372   0.96708   0.49743
   0.98022   0.96259   0.48722
   0.97636   0.95780   0.47705
   0.97213   0.95271   0.46694
   0.96753   0.94733   0.45690
   0.96256   0.94165   0.44692
   0.95722   0.93568   0.43702
   0.95150   0.92941   0.42721
   0.94540   0.92285   0.41748
   0.93892   0.91600   0.40784
   0.93207   0.90886   0.39831
   0.92485   0.90144   0.38887
   0.91725   0.89374   0.37955
   0.90928   0.88576   0.37035
   0.90095   0.87751   0.36127
   0.89225   0.86899   0.35232
   0.88320   0.86021   0.34349
   0.87379   0.85117   0.33481
   0.86404   0.84187   0.32627
   0.85395   0.83233   0.31788
   0.84353   0.82255   0.30965
   0.83279   0.81254   0.30157
   0.82173   0.80231   0.29366
   0.81037   0.79185   0.28591
   0.79872   0.78119   0.27834
   0.78678   0.77033   0.27095
   0.77458   0.75927   0.26374
   0.76212   0.74803   0.25671
   0.74941   0.73662   0.24988
   0.73647   0.72504   0.24325
   0.72331   0.71331   0.23681
   0.70995   0.70144   0.23058
   0.69640   0.68943   0.22455
   0.68267   0.67730   0.21874
   0.66879   0.66506   0.21314
   0.65477   0.65271   0.20776
   0.64062   0.64028   0.20260
   0.62637   0.62777   0.19767
   0.61202   0.61520   0.19297
   0.59761   0.60257   0.18849
   0.58314   0.58990   0.18425
   0.56863   0.57720   0.18025
   0.55410   0.56449   0.17649
   0.53957   0.55177   0.17297
   0.52506   0.53905   0.16969
   0.51059   0.52636   0.16666
   0.49618   0.51370   0.16387
   0.48183   0.50109   0.16134
   0.46759   0.48854   0.15906
   0.45345   0.47605   0.15703
   0.43944   0.46365   0.15525
   0.42559   0.45134   0.15373
   0.41190   0.43914   0.15247
   0.39839   0.42706   0.15146
   0.38509   0.41512   0.15072
   0.37201   0.40331   0.15023
   0.35917   0.39166   0.15000
   0.34658   0.38018   0.15003
   0.33426   0.36888   0.15032
   0.32223   0.35776   0.15087
   0.31051   0.34685   0.15168
   0.29910   0.33614   0.15275
   0.28803   0.32566   0.15407
   0.27730   0.31541   0.15565
   0.26693   0.30540   0.15749
   0.25694   0.29563   0.15959
   0.24734   0.28613   0.16194
   0.23814   0.27690   0.16454
   0.22935   0.26794   0.16740
   0.22097   0.25927   0.17050
   0.21303   0.25089   0.17386
   0.20554   0.24281   0.17746
   0.19849   0.23503   0.18130
   0.19189   0.22757   0.18539
   0.18576   0.22043   0.18971
   0.18011   0.21361   0.19427
   0.17493   0.20712   0.19907
   0.17023   0.20097   0.20410
   0.16601   0.19515   0.20935
   0.16229   0.18968   0.21483
   ];

P   = size(values,1);
map = interp1(1:size(values,1), values, linspace(1,P,m), 'linear');

end