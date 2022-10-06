filename = 'speech1.wav';
fs=8000;
info = audioinfo (filename)

[y, fs] = audioread (filename)
audiowrite (filename, y, fs)
y(1:2:end-1)=y(2:2:end) % replaces every second sample by previous value

sound (y, fs)
