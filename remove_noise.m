

% 
% --- setup
% 

dir_toolbox = 'C:\Users\eggdo\Desktop\B4research\MATLAB_toolbox';
addpath(dir_toolbox)
 i_opt = 2;
 i_plot = 9; 
%  fo  = zeros(8064,1);
 ip = [];
 length = 3888;
 loop = length;
%  current_dir = 'C:\Users\eggdo\Desktop\B4research\in';
% current_filename = 'current_calculation';
% current_filename = fullfile(current_dir,current_filename);
% load(current_filename)
% j = 1;
%  for j = 1:28
%     fi = current_u_turb(j:j+575,layer);
%     [fo(576*(j-1)+1:576*j), ip]=func_despike_phasespace3d( fi, i_plot, i_opt );
% end


%     fi = current_u_turb(6408:6984,layer)./10;
current_w_clean = []

 for i = 1:19
     for j = 1:division
         fi = current_w(loop*(j-1)+1:loop*j,i);
           [fo, ip]=func_despike_phasespace3d( fi, i_plot, i_opt );

%     plot(ip,fi(ip),'ro');
%     hold on
%     if i_opt==2
%         plot(fo,'r-');
%     end
%     hold off
        current_w_clean(loop*(j-1)+1:loop*j,i) = fo;
     end
 end

 % 
% --- setup
% 

dir_toolbox = 'C:\Users\eggdo\Desktop\B4research\MATLAB_toolbox';
addpath(dir_toolbox)
 i_opt = 2;
 i_plot = 9; 
%  fo  = zeros(8064,1);
 ip = [];
%  current_dir = 'C:\Users\eggdo\Desktop\B4research\in';
% current_filename = 'current_calculation';
% current_filename = fullfile(current_dir,current_filename);
% load(current_filename)
% j = 1;
%  for j = 1:28
%     fi = current_u_turb(j:j+575,layer);
%     [fo(576*(j-1)+1:576*j), ip]=func_despike_phasespace3d( fi, i_plot, i_opt );
% end


%     fi = current_u_turb(6408:6984,layer)./10;
current_u_clean = []

 for i = 1:19
     for j = 1:division
         fi = current_u(loop*(j-1)+1:loop*j,i);
           [fo, ip]=func_despike_phasespace3d( fi, i_plot, i_opt );

%     plot(ip,fi(ip),'ro');
%     hold on
%     if i_opt==2
%         plot(fo,'r-');
%     end
%     hold off
        current_u_clean(loop*(j-1)+1:loop*j,i) = fo;
     end
 end

 % 
% --- setup
% 

dir_toolbox = 'C:\Users\eggdo\Desktop\B4research\MATLAB_toolbox';
addpath(dir_toolbox)
 i_opt = 2;
 i_plot = 9; 
%  fo  = zeros(8064,1);
 ip = [];
%  current_dir = 'C:\Users\eggdo\Desktop\B4research\in';
% current_filename = 'current_calculation';
% current_filename = fullfile(current_dir,current_filename);
% load(current_filename)
% j = 1;
%  for j = 1:28
%     fi = current_u_turb(j:j+575,layer);
%     [fo(576*(j-1)+1:576*j), ip]=func_despike_phasespace3d( fi, i_plot, i_opt );
% end


%     fi = current_u_turb(6408:6984,layer)./10;
current_v_clean = []

 for i = 1:19
     for j = 1:division
         fi = current_v(loop*(j-1)+1:loop*j,i);
           [fo, ip]=func_despike_phasespace3d( fi, i_plot, i_opt );

%     plot(ip,fi(ip),'ro');
%     hold on
%     if i_opt==2
%         plot(fo,'r-');
%     end
%     hold off
        current_v_clean(loop*(j-1)+1:loop*j,i) = fo;
     end
end