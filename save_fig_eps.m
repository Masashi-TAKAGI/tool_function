
filename = 'C:\Users\eggdo\Desktop\class\M1class\suiriranryu\y-ugraph'
fname = 'y-ugraph';
%input----->filename(matファイル)
%                    fname(epsで出力されるファイル名)
cd C:\Users\eggdo\Desktop\class\M1class\suiriranryu;
% 保存先のディレクトリ
dir_save_fig = './pictures/';
% ディレクトリがなければ作成
if exist(dir_save_fig) == 0
    mkdir(dir_save_fig)
end
%　figファイルを開く
openfig(filename);
% 現在のfigを"fig"という変数で置く
fig = gcf;
% figの単位をcmにする
  fig.PaperUnits = 'centimeters';
% figの位置と縦横比を設定
fig.PaperPosition = [0 0 12 9];
% 画質を指定して保存
print(gcf,'-depsc',[dir_save_fig,fname],'-r200')

