function map = prideflag(m)
%PRIDEFLAG   Pride flag inspired color map
%   PRIDEFLAG(M) returns an M-by-3 matrix containing a colormap matching the
%   8 stripe Philadelphia pride flag
%   PRIDEFLAG, by itself, is the same length as the current figure's
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
   0.37375   0.15159   0.41745
   0.36766   0.15473   0.42623
   0.36167   0.15793   0.43475
   0.35579   0.16121   0.44301
   0.35001   0.16456   0.45103
   0.34435   0.16798   0.45879
   0.33879   0.17147   0.46630
   0.33333   0.17504   0.47355
   0.32799   0.17867   0.48056
   0.32275   0.18238   0.48731
   0.31762   0.18615   0.49381
   0.31259   0.19000   0.50005
   0.30768   0.19392   0.50605
   0.30287   0.19791   0.51179
   0.29816   0.20197   0.51728
   0.29357   0.20611   0.52252
   0.28908   0.21031   0.52750
   0.28469   0.21459   0.53223
   0.28042   0.21894   0.53671
   0.27625   0.22336   0.54094
   0.27219   0.22785   0.54491
   0.26823   0.23241   0.54864
   0.26439   0.23704   0.55210
   0.26065   0.24175   0.55532
   0.25701   0.24652   0.55829
   0.25349   0.25137   0.56100
   0.25007   0.25629   0.56346
   0.24676   0.26128   0.56566
   0.24355   0.26634   0.56762
   0.24045   0.27147   0.56932
   0.23746   0.27668   0.57077
   0.23458   0.28195   0.57197
   0.23180   0.28730   0.57291
   0.22913   0.29272   0.57360
   0.22657   0.29821   0.57404
   0.22411   0.30377   0.57423
   0.22176   0.30940   0.57416
   0.21945   0.31510   0.57382
   0.21685   0.32085   0.57306
   0.21395   0.32664   0.57190
   0.21080   0.33249   0.57035
   0.20744   0.33838   0.56842
   0.20389   0.34433   0.56612
   0.20021   0.35034   0.56348
   0.19642   0.35641   0.56050
   0.19257   0.36253   0.55720
   0.18868   0.36872   0.55360
   0.18481   0.37498   0.54970
   0.18099   0.38130   0.54554
   0.17725   0.38770   0.54110
   0.17364   0.39416   0.53643
   0.17018   0.40070   0.53152
   0.16693   0.40732   0.52640
   0.16391   0.41402   0.52107
   0.16116   0.42079   0.51555
   0.15873   0.42765   0.50987
   0.15665   0.43460   0.50402
   0.15495   0.44164   0.49803
   0.15368   0.44876   0.49192
   0.15287   0.45598   0.48569
   0.15256   0.46329   0.47936
   0.15280   0.47070   0.47294
   0.15360   0.47821   0.46646
   0.15502   0.48583   0.45992
   0.15710   0.49354   0.45334
   0.15986   0.50136   0.44673
   0.16335   0.50929   0.44011
   0.16760   0.51733   0.43350
   0.17266   0.52549   0.42690
   0.17856   0.53376   0.42034
   0.18533   0.54214   0.41382
   0.19302   0.55065   0.40737
   0.20167   0.55928   0.40100
   0.21131   0.56804   0.39471
   0.22238   0.57734   0.38823
   0.23506   0.58738   0.38140
   0.24924   0.59811   0.37426
   0.26484   0.60946   0.36683
   0.28175   0.62137   0.35912
   0.29989   0.63379   0.35117
   0.31917   0.64666   0.34300
   0.33948   0.65992   0.33464
   0.36073   0.67351   0.32610
   0.38282   0.68737   0.31741
   0.40568   0.70145   0.30861
   0.42919   0.71569   0.29970
   0.45327   0.73003   0.29072
   0.47782   0.74440   0.28169
   0.50274   0.75876   0.27263
   0.52795   0.77304   0.26358
   0.55335   0.78719   0.25454
   0.57884   0.80115   0.24556
   0.60433   0.81485   0.23664
   0.62972   0.82825   0.22783
   0.65493   0.84127   0.21913
   0.67986   0.85388   0.21058
   0.70440   0.86599   0.20220
   0.72848   0.87757   0.19402
   0.75199   0.88854   0.18605
   0.77484   0.89885   0.17833
   0.79694   0.90845   0.17088
   0.81819   0.91727   0.16371
   0.83849   0.92526   0.15687
   0.85776   0.93235   0.15036
   0.87590   0.93850   0.14422
   0.89281   0.94363   0.13847
   0.90841   0.94770   0.13313
   0.92258   0.95064   0.12823
   0.93526   0.95240   0.12380
   0.94632   0.95291   0.11985
   0.95587   0.95214   0.11638
   0.96433   0.95013   0.11330
   0.97177   0.94693   0.11060
   0.97824   0.94260   0.10825
   0.98379   0.93719   0.10625
   0.98844   0.93076   0.10458
   0.99224   0.92337   0.10323
   0.99524   0.91507   0.10217
   0.99747   0.90591   0.10140
   0.99898   0.89595   0.10090
   0.99981   0.88525   0.10066
   1.00000   0.87386   0.10067
   0.99959   0.86184   0.10090
   0.99863   0.84924   0.10135
   0.99716   0.83612   0.10199
   0.99521   0.82253   0.10282
   0.99284   0.80853   0.10382
   0.99007   0.79418   0.10498
   0.98696   0.77952   0.10628
   0.98355   0.76462   0.10771
   0.97987   0.74953   0.10924
   0.97597   0.73430   0.11088
   0.97190   0.71900   0.11260
   0.96768   0.70367   0.11439
   0.96338   0.68837   0.11624
   0.95901   0.67316   0.11813
   0.95464   0.65809   0.12004
   0.95030   0.64322   0.12196
   0.94602   0.62860   0.12388
   0.94187   0.61429   0.12579
   0.93786   0.60034   0.12766
   0.93406   0.58681   0.12948
   0.93049   0.57376   0.13125
   0.92721   0.56124   0.13293
   0.92425   0.54930   0.13453
   0.92165   0.53800   0.13603
   0.91945   0.52736   0.13742
   0.91737   0.51677   0.13900
   0.91531   0.50602   0.14085
   0.91327   0.49512   0.14295
   0.91124   0.48409   0.14528
   0.90920   0.47297   0.14783
   0.90714   0.46176   0.15056
   0.90507   0.45049   0.15346
   0.90296   0.43919   0.15651
   0.90082   0.42787   0.15968
   0.89863   0.41655   0.16296
   0.89639   0.40525   0.16633
   0.89408   0.39400   0.16976
   0.89170   0.38281   0.17323
   0.88924   0.37172   0.17673
   0.88669   0.36073   0.18023
   0.88404   0.34987   0.18371
   0.88128   0.33916   0.18715
   0.87841   0.32862   0.19053
   0.87541   0.31827   0.19383
   0.87228   0.30814   0.19702
   0.86901   0.29824   0.20010
   0.86559   0.28860   0.20303
   0.86201   0.27923   0.20580
   0.85827   0.27016   0.20838
   0.85434   0.26141   0.21076
   0.85024   0.25299   0.21291
   0.84594   0.24494   0.21481
   0.84144   0.23727   0.21644
   0.83673   0.23000   0.21779
   0.83180   0.22316   0.21882
   0.82664   0.21676   0.21953
   0.82125   0.21082   0.21988
   0.81562   0.20538   0.21986
   0.80973   0.20043   0.21945
   0.80358   0.19602   0.21862
   0.79716   0.19216   0.21736
   0.79045   0.18898   0.21562
   0.78344   0.18664   0.21334
   0.77615   0.18510   0.21056
   0.76858   0.18432   0.20730
   0.76075   0.18425   0.20360
   0.75266   0.18484   0.19948
   0.74433   0.18604   0.19498
   0.73576   0.18781   0.19011
   0.72697   0.19010   0.18492
   0.71798   0.19286   0.17943
   0.70878   0.19604   0.17366
   0.69939   0.19961   0.16765
   0.68982   0.20351   0.16142
   0.68008   0.20769   0.15502
   0.67019   0.21211   0.14845
   0.66015   0.21672   0.14176
   0.64998   0.22148   0.13497
   0.63968   0.22633   0.12811
   0.62927   0.23123   0.12120
   0.61875   0.23613   0.11429
   0.60814   0.24099   0.10740
   0.59745   0.24576   0.10055
   0.58670   0.25039   0.09377
   0.57588   0.25483   0.08710
   0.56501   0.25905   0.08057
   0.55411   0.26298   0.07419
   0.54318   0.26658   0.06801
   0.53223   0.26982   0.06204
   0.52128   0.27263   0.05633
   0.51033   0.27498   0.05089
   0.49940   0.27681   0.04576
   0.48850   0.27808   0.04097
   0.47763   0.27874   0.03653
   0.46682   0.27874   0.03250
   0.45606   0.27805   0.02888
   0.44538   0.27660   0.02572
   0.43476   0.27441   0.02300
   0.42412   0.27188   0.02049
   0.41344   0.26909   0.01812
   0.40271   0.26605   0.01590
   0.39194   0.26276   0.01382
   0.38113   0.25922   0.01189
   0.37027   0.25542   0.01010
   0.35937   0.25137   0.00846
   0.34843   0.24707   0.00696
   0.33744   0.24252   0.00561
   0.32640   0.23771   0.00441
   0.31533   0.23265   0.00335
   0.30421   0.22734   0.00243
   0.29304   0.22178   0.00166
   0.28183   0.21596   0.00104
   0.27058   0.20989   0.00056
   0.25928   0.20357   0.00023
   0.24794   0.19700   0.00004
   0.23656   0.19017   0.00000
   0.22513   0.18309   0.00010
   0.21366   0.17576   0.00035
   0.20214   0.16818   0.00075
   0.19058   0.16034   0.00129
   0.17897   0.15225   0.00197
   0.16733   0.14391   0.00281
   0.15563   0.13532   0.00378
   0.14390   0.12647   0.00490
   0.13212   0.11737   0.00617
   0.12030   0.10802   0.00758
   0.10843   0.09842   0.00914
   0.09652   0.08856   0.01085
   0.08456   0.07845   0.01270
   0.07256   0.06809   0.01469
   0.06052   0.05748   0.01683
   0.04843   0.04661   0.01912
   0.03630   0.03550   0.02155
   0.02412   0.02412   0.02412
    ];

P   = size(values,1);
map = interp1(1:size(values,1), values, linspace(1,P,m), 'linear');

end