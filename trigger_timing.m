%program to calculate the variable delay between beginning of saved data
%and rising edge trigger from camera
%Intan board has a minimum of 1 second buffer, plus some variable amount
%
%Author: Alix Battison. 3/17/2017

data = data1;
sampling_rate = 20000; %change according to sampling rate used during data acquisition
len = length(data(:,1));

i = 1;
for i = 1:len
    if data(i,1) < max(data(:,1))
     i = i+1;
        
    else 
        disp(sprintf('Rising edge detected at %d',i))
        
       break
    end
 
end

sec = i/sampling_rate;
vardel = sec - 1;
disp(sprintf('Rising edge occurs after %f seconds and %d data points.', sec, i))
%disp(sprintf('Variable delay of %d sec after intan 1 second delay', vardel))

