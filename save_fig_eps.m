
filename = 'C:\Users\eggdo\Desktop\class\M1class\suiriranryu\y-ugraph'
fname = 'y-ugraph';
%input----->filename(mat�t�@�C��)
%                    fname(eps�ŏo�͂����t�@�C����)
cd C:\Users\eggdo\Desktop\class\M1class\suiriranryu;
% �ۑ���̃f�B���N�g��
dir_save_fig = './pictures/';
% �f�B���N�g�����Ȃ���΍쐬
if exist(dir_save_fig) == 0
    mkdir(dir_save_fig)
end
%�@fig�t�@�C�����J��
openfig(filename);
% ���݂�fig��"fig"�Ƃ����ϐ��Œu��
fig = gcf;
% fig�̒P�ʂ�cm�ɂ���
  fig.PaperUnits = 'centimeters';
% fig�̈ʒu�Əc�����ݒ�
fig.PaperPosition = [0 0 12 9];
% �掿���w�肵�ĕۑ�
print(gcf,'-depsc',[dir_save_fig,fname],'-r200')

