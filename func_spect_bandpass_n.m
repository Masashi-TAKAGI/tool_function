function [P] = func_spect_bandpass_n( x, n, nc_low, nc_high, i_flag )
%
% cut more than nc-th mode of x vector of n column
%
% nの長さにxをフーリエ変換（8/24）
c1=fft(x,n);

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

for i=nc1:nc2
  c2(i)= 0;
end
for i=nc3:nc4
  c2(i) = 0;
end

P=real(ifft(c2,n));

%
% --- check
%

if i_flag == 1
figure
hold on
semilogy(c1.*conj(c1),'b-');
hold off
semilogy(c2.*conj(c2),'r-');
end

