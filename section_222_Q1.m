filename = 'speech1.wav';
fs=8000;
info = audioinfo (filename)

[y, fs] = audioread (filename)
audiowrite (filename, y, fs)
y(1:2:end) = 0.0; % replaces every second sample by 0

sound (y, fs)
