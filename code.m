[y,fs] = audioread('D:\project\sp03_babble_sn15 (1).wav');
y = y(:,1);
    dt = 1/fs;
    t = 0:dt:(length(y)*dt)-dt;
    plot(t,y); xlabel('Seconds'); ylabel('Amplitude');
    figure
    
    plot(psd(spectrum.periodogram,y,'Fs',fs,'NFFT',length(y)));
    figure
    spectrogram(y);
     player = audioplayer(y,Fs);
     