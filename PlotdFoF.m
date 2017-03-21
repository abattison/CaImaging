% PlotdFoF.m
% Matlab script to plot the dfof values of the calcium images
% Author: Alix Battison. last modified 1/23/2017
%%%
clear
clc

%enter full path
%copy and past this structure to add and plot more than two files
% EMX 
% CaData_file01 = xlsread('D:\Slice Images\EMX Cre\LEV\160301 GCAMP5Emx P10 LEV\160301041 Slice 4 4AP 50 uM 15 min\RTDEN_1.xlsx');
% CaData_file02 = xlsread('D:\Slice Images\EMX Cre\LEV\160301 GCAMP5Emx P10 LEV\160301041 Slice 4 4AP 50 uM 15 min\RTDEN_2.xlsx');
% CaData_file03 = xlsread('D:\Slice Images\EMX Cre\LEV\160301 GCAMP5Emx P10 LEV\160301041 Slice 4 4AP 50 uM 15 min\RTDEN_3.xlsx');
% CaData_file04 = xlsread('D:\Slice Images\EMX Cre\LEV\160301 GCAMP5Emx P10 LEV\160301041 Slice 4 4AP 50 uM 15 min\RTDEN_4.xlsx');

 CaData_file01 = xlsread('I:\170106\run1 4AP\rthem1.xlsx');
  CaData_file02 = xlsread('I:\170106\run1 4AP\rthem2.xlsx');
   CaData_file03 = xlsread('I:\170106\run1 4AP\rthem3.xlsx');
    CaData_file04 = xlsread('I:\170106\run1 4AP\rthem4.xlsx');
     CaData_file05 = xlsread('I:\170106\run1 4AP\rthem5.xlsx');
      CaData_file06 = xlsread('I:\170106\run1 4AP\rthem6.xlsx');
       CaData_file07 = xlsread('I:\170106\run1 4AP\rthem7.xlsx');
        CaData_file08 = xlsread('I:\170106\run1 4AP\rthem8.xlsx');
         CaData_file09 = xlsread('I:\170106\run1 4AP\rthem9.xlsx');
          CaData_file10 = xlsread('I:\170106\run1 4AP\rthem10.xlsx');
           CaData_file11 = xlsread('I:\170106\run1 4AP\rthem11.xlsx');
           
 CaData_fileLFT = xlsread('I:\170106\run1 4AP\leftfront.xlsx');
  CaData_fileRT = xlsread('I:\170106\run1 4AP\rightfront.xlsx');
   CaData_fileRThem = xlsread('I:\170106\run1 4AP\rightcortex.xlsx');
    CaData_fileLFThem = xlsread('I:\170106\run1 4AP\lefthemisphere.xlsx');


 
 figure
 subplot(2, 1,1)
 plot(CaData_fileRThem(:,1), CaData_fileRThem(:,2));
 subplot(2, 1, 2)
 plot(CaData_fileLFThem(:,1), CaData_fileLFThem(:,2));
 
           
 figure
 subplot(11, 1, 1);
 plot(CaData_file01(:,1), CaData_file01(:,2));
 title('Column 1');
 subplot(11, 1, 2);
 plot(CaData_file02(:,1), CaData_file02(:,2));
 title('Column 2');
  subplot(11, 1, 3);
 plot(CaData_file03(:,1), CaData_file03(:,2));
 title('Column 3');
  subplot(11, 1, 4);
 plot(CaData_file04(:,1), CaData_file04(:,2));
 title('Column 4');
  subplot(11, 1, 5);
 plot(CaData_file05(:,1), CaData_file05(:,2));
 title('Column 5');
  subplot(11, 1, 6);
 plot(CaData_file06(:,1), CaData_file06(:,2));
 title('Column 6');
  subplot(11, 1, 7);
 plot(CaData_file07(:,1), CaData_file07(:,2));
 title('Column 7');
  subplot(11, 1, 8);
 plot(CaData_file08(:,1), CaData_file08(:,2));
 title('Column 8');
  subplot(11, 1, 9);
 plot(CaData_file09(:,1), CaData_file09(:,2));
 title('Column 9');
  subplot(11, 1, 10);
 plot(CaData_file10(:,1), CaData_file10(:,2));
 title('Column 10');
  subplot(11, 1, 11);
 plot(CaData_file11(:,1), CaData_file11(:,2));
 title('Column 11');
 


% figure
% subplot(4,1,1);
% plot(CaData_file01(:,1), CaData_file01(:,2));
% title('Column 1');
% 
% subplot(4, 1, 2);
% plot(CaData_file02(:,1), CaData_file02(:,2));
% title('Column 2');
% 
% subplot(4, 1, 3);
% plot(CaData_file03(:,1), CaData_file03(:,2));
% title('Column 3');
% 
% subplot(4, 1, 4);
% plot(CaData_file04(:,1), CaData_file04(:,2));
% title('Column 4');
% 




%plot the raw data DFoF z-axis profile for CaData_file01
figure
plot(CaData_fileLFThem(:,1), CaData_fileLFThem(:,2))
title('Z-axis Profile - Whole Hemisphere')

figure
plot(CaData_file02(:,1), CaData_file02(:,2))
title('Z-axis Profile')

figure
plot(CaData_file03(:,1), CaData_file03(:,2))
title('Z-axis Profile')

% 
% %plot the raw data DFoF z-axis profile for CaData_file02
% figure
% plot(CaData_file02(:,1), CaData_file02(:,2))
% title('SST Cortex Z-axis Profile')
% 
% %plots CaData_file01 vs CaData_file02
% figure
% plot(CaData_file01(:,1), CaData_file01(:,2), CaData_file02(:,1), CaData_file02(:,2))
% title('SST and EMX in Cortex')
% legend('EMX', 'SST')
% 
% 
% 
% %plot spiking activity of first 500 frames of EMX and SST
% figure
% plot(CaData_file01(1:500, 1), CaData_file01(1:500,2))
% title('Spiking activity of EMX in cortex')
% legend('EMX', 'SST')






