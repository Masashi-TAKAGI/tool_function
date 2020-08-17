filename2 = 'C:\Users\eggdo\Desktop\B4research\figure\for paper\HAIYAN\COAWST_str.jpg'; 
a = imread(filename2);
image(a)
axis off
pbaspect([8 6 1])
saveas(gcf,[dir_save_fig,fname],'epsc')	