%Exercise 1:
%% Experiment 1.1 Resting
m = readtable('restinSp02.csv'); %creating variable m which is a table created from the csv file

tx1 = m(:,1); %creating variable tx1 which exstracts the time column from table m
tx1 = tx1{:,:}; %making the variable tx1 into a matrix, which can be used in the plot function
HRx1 = m(:,2); %creating variable HRx1 which exstracts the Heart Rate column from table m
HRx1 = HRx1{:,:}; %making the variable HRx1 into a matrix, which can be used in the plot function
PPGx1 = m(:,3); %creating variable PPGx1 which exstracts the PPG column from table m
PPGx1 = PPGx1{:,:}; %making the variable PPGx1 into a matrix, which can be used in the plot function
SP02x1 = m(:,4); %creating variable SP02x1 which exstracts the Sp02 column from table m
SP02x1 = SP02x1{:,:}; %making the variable SP02x1 into a matrix, which can be used in the plot function

timex1 = 0 : length(tx1) - 1;
timex1 = timex1 * 0.004; %conversion of time array to take into the account the sampling rate (250Hz)

%Part A

figure(1); %figure for HR, PPG, and Sp02 signals when resting
%Heart Rate
subplot(311);
plot(timex1,HRx1);
xlabel('Time(s)');
ylabel('Heart Rate (Bpm)');
title('Heart Rate');
subplot(312);
%PPG
plot(timex1,PPGx1);
xlabel('Time(s)');
ylabel( 'Amplitude mV');
title('PPG');
%Sp02
subplot(313);
plot(timex1,SP02x1);
xlabel('Time(s)');
ylabel('% O2 Saturation');
title('Sp02');

%Part B

sumHRx1 = sum(HRx1); %summing the whole HR column
sumPPGx1 = sum(PPGx1); %summing the whole PPG column
sumSp02x1 = sum(SP02x1); %summing the whole Sp02 column

sizeHRx1 = size(HRx1); %counting the amount of data points in the array
sizeHRx1 = sizeHRx1(:,1); %taking away the second column to create an integer value (this value is the same for HR, PPG, and Sp02)

meanHRx1 = sumHRx1 / sizeHRx1; %mean of HR
meanPPGx1 = sumPPGx1 / sizeHRx1; %mean of PPG
meanSp02x1 = sumSp02x1 / sizeHRx1; %mean of Sp02

stdHRx1 = std(HRx1); %standard deviation of HR
stdPPGx1 = std(PPGx1); %standard deviation of PPG
stdSp02x1 = std(SP02x1); %standard deviation of Sp02

%% Experiment 1.2 Hold

n = readtable('holdSpO2.csv'); %creating variable n which is a table created from the csv file

tx2 = n(:,1); %creating variable tx2 which exstracts the time column from table m
tx2 = tx2{:,:}; %making the variable tx2 into a matrix, which can be used in the plot function
HRx2 = n(:,2); %creating variable HRx2 which exstracts the Heart Rate column from table m
HRx2 = HRx2{:,:}; %making the variable HRx2 into a matrix, which can be used in the plot function
PPGx2 = n(:,3); %creating variable PPGx2 which exstracts the PPG column from table m
PPGx2 = PPGx2{:,:}; %making the variable PPGx2 into a matrix, which can be used in the plot function
SP02x2 = n(:,4); %creating variable SP02x2 which exstracts the Sp02 column from table m
SP02x2 = SP02x2{:,:}; %making the variable SP02x2 into a matrix, which can be used in the plot function

timex2 = 0 : length(tx2) - 1;
timex2 = timex2 * 0.004; %conversion of time array to take into the account the sampling rate (250Hz)

figure(2); %figure for HR, PPG, and Sp02 signals when holding breath
%Heart Rate
subplot(311);
plot(timex2,HRx2);
xlabel('Time(s)');
ylabel('Heart Rate (Bpm)');
title('Heart Rate');
subplot(312);
%PPG
plot(timex2,PPGx2);
xlabel('Time(s)');
ylabel('Amplitude mV');
title('PPG');
%Sp02
subplot(313);
plot(timex2,SP02x2);
xlabel('Time(s)');
ylabel('% O2 Saturation');
title('Sp02');

%Part B

sumHRx2 = sum(HRx2); %summing the whole HR column
sumPPGx2 = sum(PPGx2); %summing the whole PPG column
sumSp02x2 = sum(SP02x2); %summing the whole Sp02 column

sizeHRx2 = size(HRx2); %counting the amount of data points in the array
sizeHRx2 = sizeHRx2(:,1); %taking away the second column to create an integer value (this value is the same for HR, PPG, and Sp02)

meanHRx2 = sumHRx2 / sizeHRx2; %mean of HR
meanPPGx2 = sumPPGx2 / sizeHRx2; %mean of PPG
meanSp02x2 = sumSp02x2 / sizeHRx2; %mean of Sp02

stdHRx2 = std(HRx2); %standard deviation of HR
stdPPGx2 = std(PPGx2); %standard deviation of PPG
stdSp02x2 = std(SP02x2); %standard deviation of Sp02

%Exercise 2:

m = readtable('exercise.csv');
m2 = readtable('relaxed.csv');

tx1 = m(:,1); 
tx1 = tx1{:,:}; 
bp = m(:,2); 
bp = bp{:,:}; 

tx2 = m2(:,1); 
tx2 = tx2{:,:}; 
bp2 = m2(:,2); 
bp2 = bp2{:,:}; 

timex1 = 0: length(tx1)-1;
timex2 = timex1*0.004;

time2x1 = 0: length(tx2)-1;
time2x2 = time2x1*0.004;

figure(1);
%bp
subplot(212);
plot(timex2,bp);
xlabel('Time(s)');
ylabel('BP (mmHg)');
title('BP Exercise');
%bp2
subplot(211);
plot(time2x2,bp2);
xlabel('Time(s)');
ylabel('BP (mmHg)');
title('BP Relaxed');
