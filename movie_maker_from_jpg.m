


%
% --- ファイルに入ってるjpgデータからムービーをつくるプログラム
%

clear
close all

%
% --- set up
%

drive = 'E:';
case_name = 'hsig';
file_num = t;
file_name = [drive,'\Mresearch\COAWST_test_case\Coupled\',case_name];
video_name = ['check_hsig.gif'];
n_fps = 2 ;


% -------------------------------------------------------------------------

%
% --- make directory
%

save_dir =[drive,'\Mresearch\COAWST_test_case\Coupled'];
mkdir(save_dir)

% -------------------------------------------------------------------------

%
% --- save directory
%
    
    v_p = VideoWriter([save_dir,'/',video_name]);
    v_p.FrameRate = n_fps;
    open(v_p)
    
    fig1 = figure(1);
    
for i = 1:length(file_num)
    
    imshow([file_name,'\jpg\',num2str(file_num(i)),'.jpg'])
    F_p = getframe(fig1);
    writeVideo(v_p,F_p)
    
   
end

    close(v_p)
