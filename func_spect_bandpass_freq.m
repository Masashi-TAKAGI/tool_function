function [P] = func_spect_bandpass_freq( x, t, f_low, f_high, i_flag )
%
% cut more than nc-th mode of x vector of n column
%
% x�̒�����n�Ƃ���i8/24)
n  = length(x);

% ���Ԃ̍ő�l��T0�i8/24�j
% ��{���g����1/T0�Ƃ��Đݒ�i8/24�j
% T0 = max(t);
% df = (1/T0);
df = (1/300)/n;
% ���g���̈�f--->�Б��U���X�y�N�g���̌v�Z�Ɋ��p�i8/24�j
% f  = 0:df:df*(n/2-1);
f  = 0:df:df*(n-1);
% x�𒷂�n��fft(8/24)
c1 = fft(x,n);

%
% --- filter
%
% ���g���ɐ�����������i8/24�j
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

% �w����g���̃f�[�^�����ׂ�0�ɂ���i8/24�j
for i=nc1:nc2
  c2(i,:)= 0;
end
for i=nc3:nc4
  c2(i,:) = 0;
end
% �t�t�[���G�ϊ��i8/24�j
P=real(ifft(c2,n));

%
% --- check
%
% �Бΐ��O���t�i�p���[�X�y�N�g���j�i8/24�j
if i_flag == 1
figure
hold on
semilogy(c1.*conj(c1),'b-');
hold off
semilogy(c2.*conj(c2),'r-');
end

