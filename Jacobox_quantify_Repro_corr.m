%clc; clear; close all

BreproC(:,2)=MonkeyB.coloreve(labBvert+1);
BreproC(:,1)=MonkeyB.colorodd(labBvert+1);

BreproM(:,2)=MonkeyB.motioneve(labBvert+1);
BreproM(:,1)=MonkeyB.motionodd(labBvert+1);

DreproC(:,2)=MonkeyD.coloreve(labDvert+1);
DreproC(:,1)=MonkeyD.colorodd(labDvert+1);

DreproM(:,2)=MonkeyD.motioneve(labDvert+1);
DreproM(:,1)=MonkeyD.motionodd(labDvert+1);

% remove negtive
% temp_BreproM=BreproM
% temp_BreproM(temp_BreproM<0)=nan
% b = temp_BreproM(all(~isnan(temp_BreproM),2),:)

nbins=60;
figure;
h1=binscatter(BreproC(:,1),BreproC(:,2), [nbins nbins]);
hold on
hs1=scatter(BreproC(:,1),BreproC(:,2));
hs1.MarkerEdgeAlpha = 0;
hl1=lsline;
hl1.LineWidth=3; hl1.LineStyle='--';

figure;
h2=binscatter(BreproM(:,1),BreproM(:,2), [nbins nbins]);
hold on
hs2=scatter(BreproM(:,1),BreproM(:,2));
hs2.MarkerEdgeAlpha = 0;
hl2=lsline;
hl2.LineWidth=3; hl2.LineStyle='--';

figure;
h3=binscatter(DreproC(:,1),DreproC(:,2), [nbins nbins]);
hold on
hs3=scatter(DreproC(:,1),DreproC(:,2));
hs3.MarkerEdgeAlpha = 0;
hl3=lsline;
hl3.LineWidth=3; hl3.LineStyle='--';

figure;
h4=binscatter(DreproM(:,1),DreproM(:,2), [nbins nbins]);
hold on
hs4=scatter(DreproM(:,1),DreproM(:,2));
hs4.MarkerEdgeAlpha = 0;
hl4=lsline;
hl4.LineWidth=3; hl4.LineStyle='--';

%%
repro.BC=corr(BreproC);
repro.BM=corr(BreproM);
repro.DC=corr(DreproC);
repro.DM=corr(DreproM);