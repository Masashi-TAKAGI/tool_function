%
% --- Distance Hubeny's formula ---
%     2018/2/16
%
% <Example.>
%
% lat1 = -90:1:90; lon1 = 0:1:360;
% [Lon1,Lat1] = meshgrid(lon1,lat1);
% lat2 = 40; lon2 = 120;
% Lon2 = nan(length(lat1),length(lon1))+lon2;
% Lat2 = nan(length(lat1),length(lon1))+lat2;
% D = hubeny_formula(Lat1,Lon1,Lat2,Lon2);
% figure; hold on; pcolor(Lon1,Lat1,D)

function D = hubeny_formula2(lat1,lon1,lat2,lon2)


  a = 6378.1370; % GRS80 [km]
  b = 6356.752314140; % GRS80 [km]
  dy = deg2rad(lat1 - lat2);
  dx = deg2rad(lon1 - lon2);
  my = deg2rad((lat1 + lat2) ./ 2);
  e2 = (a.^2 - b.^2) / a.^2;
  Mnum = a .* (1 - e2);
  W = sqrt(1 - e2 .* sin(my).^2);
  M = Mnum ./ W.^3;
  N = a ./ W;
  D = sqrt((dy .* M).^2 + (dx .* N .* cos(my)).^2);
  
end