function[fig1] = save_fig_as_jpg_emf_mat(fig1,dir_save_fig,fname,resolution)
% dir_save_fig:保存ディレクトリ
% fname：保存ファイル名
if exist([dir_save_fig,'\fig\']) == 0
    mkdir([dir_save_fig,'\fig\'])
end
if exist([dir_save_fig,'\jpg\']) == 0
    mkdir([dir_save_fig,'\jpg\'])
end
if exist([dir_save_fig,'\emf\']) == 0
    mkdir([dir_save_fig,'\emf\'])
end
saveas(fig1,[dir_save_fig,'\fig\',fname,'.fig'])
print(fig1,'-djpeg',[dir_save_fig,'\jpg\',fname],resolution)
print(fig1,'-dmeta',[dir_save_fig,'\emf\',fname],resolution)
end