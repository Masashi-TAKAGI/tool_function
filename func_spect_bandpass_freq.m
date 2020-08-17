function [P] = func_spect_bandpass_freq( x, t, f_low, f_high, i_flag )
%
% cut more than nc-th mode of x vector of n column
%
% xの長さをnとする（8/24)
n  = length(x);

% 時間の最大値をT0（8/24）
% 基本周波数を1/T0として設定（8/24）
% T0 = max(t);
% df = (1/T0);
df = (1/300)/n;
% 周波数領域f--->片側振幅スペクトルの計算に活用（8/24）
% f  = 0:df:df*(n/2-1);
f  = 0:df:df*(n-1);
% xを長さnでfft(8/24)
c1 = fft(x,n);

%
% --- filter
%
% 周波数に制限をかける（8/24）
nc_low  = round( f_low /df );
nc_high = round( f_high/df );

if nc_high < 0
	nc_high = n/2;
end

nc1 = nc_low  + 1;
nc2 = nc_high + 1;
nc3 = n/2 + 1 + (n/2 - nc_high);
nc4 = n - nc_low + 1;

% check
if nc2 >= n/2 + 1
	nc2 = n/2 + 1;
end
if nc3 < n/2 + 1
	nc3 = n/2 + 1;
end
if nc4 <= 1
	nc4 = 1;
end

%
% --- ifft
%

c2 = c1;
%c2(nc1:nc2)=[zeros]

% 指定周波数のデータをすべて0にする（8/24）
for i=nc1:nc2
  c2(i,:)= 0;
end
for i=nc3:nc4
  c2(i,:) = 0;
end
% 逆フーリエ変換（8/24）
P=real(ifft(c2,n));

%
% --- check
%
% 片対数グラフ（パワースペクトル）（8/24）
if i_flag == 1
figure
hold on
semilogy(c1.*conj(c1),'b-');
hold off
semilogy(c2.*conj(c2),'r-');
end

