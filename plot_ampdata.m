
%Author: Alix Battison 
%last modified: 1/19/2017
 CaData_file01 = xlsread('I:\170301\run4\cortex.xlsx');
 
%change these parameters to change the axis 
start_t = 0; %time on x-axis, can specify the start/end time to plot
end_t = 200;
yrange = 7000; %plots +/- range 
% 
% figure
% plot(CaData_file01(:,1), CaData_file01(:,2));


x2 = CaData_file01(:,1);
y2 = CaData_file01(:,2);
x1 = t_amplifier;
y1 = amplifier_data(1,:);

figure
plot(CaData_file01(:,1), CaData_file01(:,2))

figure
line(x1,y1,'Color','b')
ax1 = gca; % current axes
axis([start_t end_t -yrange yrange]);
ax1.XColor = 'b';
ax1.YColor = 'b';

ax1_pos = ax1.Position; % position of first axes
ax2 = axes('Position',ax1_pos,...
    'XAxisLocation','top',...
    'YAxisLocation','right',...
    'Color','none');

ax2.XColor = 'r';
ax2.YColor = 'r';

line(x2,y2,'Parent',ax2,'Color','r')

figure
subplot(2, 1, 1)
plot(CaData_file01(:,1), CaData_file01(:,2))
title('EMX Z-axis Profile')

subplot(2, 1, 2)
plot(t_amplifier, amplifier_data(1,:));
axis([start_t end_t -yrange yrange]);
title('Channel 8');



ampdata_transpose = amplifier_data(1,:);
ampdata_transpose = ampdata_transpose';



% figure
% plot(CaData_file01(:,1), CaData_file01(:,2), t_amplifier, amplifier_data(1,:))


%LFP in 20 msec





%A = CaData_file01;
%normc(A(2,:));



%normalize calcium imaging data
%CaDatatime = CaData_file01(:,1);
% CaDatatime = CaData_file01(:,1).\20;
% CaData = CaData_file01(:,2);

% normCadata = normc(CaData);
% normCatime = normc(CaDatatime);
% 
% figure
% plot(normCatime, normCadata)
% 
% %normalize LFP data
% LFPdata = amplifier_data(4,:)';
% LFPtime = t_amplifier(1,:)';
% normlfpdata = normc(LFPdata);
% normlfptime = normc(LFPtime);
% 
% figure
% plot(normlfptime, normlfpdata)

% figure
% plot(normCatime, normCadata, normlfptime, normlfpdata)
% 

%Anorm(:,:) = (A(:,:) - min(A(:,:)))/(max(A(:,:)) - min(A(:,:)));
% normA = A - min(A);
% normA = normA ./ max(normA(:,:));
%plot(A(:,1), A(:,2))




% b = spectrogram(CaData_file01(:,2));
% spectrogram(b,  'time')

%if you dont like the way the plots are displayed, change whats within
%the subplot parenthesis 
% figure
% subplot(2,2,1);
% plot(t_amplifier, amplifier_data(1,:));
% axis([start_t end_t -yrange yrange]);
% title('Channel 8');
% subplot(2,2,2);
% plot(t_amplifier, amplifier_data(2,:));
% axis([start_t end_t -yrange yrange]);
% title('Channel 9');
% subplot(2,2,3);
% plot(t_amplifier, amplifier_data(3,:));
% axis([start_t end_t -yrange yrange]);
% title('Channel 10');
% subplot(2,2,4);
% plot(t_amplifier, amplifier_data(4,:));
% axis([start_t end_t -yrange yrange]);
% title('Channel 11')


%DSCaData_file01(:,1) = CaData_file01(:,1)./20;

% figure
% plot(DSCaData_file01(:,1)', CaData_file01(:,2)')
% hold on;
% plot(t_amplifier(1,1:800)', amplifier_data(4,1:800)');
% 
% figure
% plot(t_amplifier, amplifier_data(4,:), CaData_file01(:,1), CaData_file01(:,2))

