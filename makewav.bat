@echo off
echo === Normalizing SD4 filenames to uppercase ===
cd SD4
for %%f in (*.sd4 *.Sd4 *.sD4) do rename "%%f" "%%~nf.SD4"
cd ..

if not exist WAV mkdir WAV
echo === Extracting SD4 files to WAV ===
for %%f in (SD4\*.SD4) do (
    SegaPCM.exe --start=32 --rate=16276 --output="WAV\%%~nf.wav" "%%f"
)

echo === Slicing specific dialogue segments ===
SegaPCM.exe --start=32 --length=20000 --rate=16276 --output=WAV\RD6504_1.wav SD4\RD6504.SD4
SegaPCM.exe --start=20032 --rate=16276 --output=WAV\RD6504_2.wav SD4\RD6504.SD4
SegaPCM.exe --start=32 --length=63500 --rate=16276 --output=WAV\RD0201A_1.wav SD4\RD0201A.SD4
SegaPCM.exe --start=63532 --rate=16276 --output=WAV\RD0201A_2.wav SD4\RD0201A.SD4
SegaPCM.exe --start=32 --length=50000 --rate=16276 --output=WAV\RD2201A_1.wav SD4\RD2201A.SD4
SegaPCM.exe --start=50032 --rate=16276 --output=WAV\RD2201A_2.wav SD4\RD2201A.SD4
SegaPCM.exe --start=32 --length=35000 --rate=16276 --output=WAV\RD2605B_1.wav SD4\RD2605B.SD4
SegaPCM.exe --start=35032 --rate=16276 --output=WAV\RD2605B_2.wav SD4\RD2605B.SD4
SegaPCM.exe --start=32 --length=30000 --rate=16276 --output=WAV\RD2702_1.wav SD4\RD2702.SD4
SegaPCM.exe --start=30032 --rate=16276 --output=WAV\RD2702_2.wav SD4\RD2702.SD4
SegaPCM.exe --start=32 --length=35000 --rate=16276 --output=WAV\RD4004B_1.wav SD4\RD4004B.SD4
SegaPCM.exe --start=35032 --rate=16276 --length=39000 --output=WAV\RD4004B_2.wav SD4\RD4004B.SD4
SegaPCM.exe --start=74032 --rate=16276 --output=WAV\RD4004B_3.wav SD4\RD4004B.SD4
SegaPCM.exe --start=32 --length=45000 --rate=16276 --output=WAV\RD4602B_1.wav SD4\RD4602B.SD4
SegaPCM.exe --start=45032 --rate=16276 --output=WAV\RD4602B_2.wav SD4\RD4602B.SD4
SegaPCM.exe --start=32 --length=112000 --rate=16276 --output=WAV\RE2605B_1.wav SD4\RE2605B.SD4
SegaPCM.exe --start=112032 --rate=16276 --output=WAV\RE2605B_2.wav SD4\RE2605B.SD4
SegaPCM.exe --start=32 --length=32000 --rate=16276 --output=WAV\RD5701A_1.wav SD4\RD5701A.SD4
SegaPCM.exe --start=32032 --rate=16276 --output=WAV\RD5701A_2.wav SD4\RD5701A.SD4
SegaPCM.exe --start=32 --length=17500 --rate=16276 --output=WAV\RD6004_1.wav SD4\RD6004.SD4
SegaPCM.exe --start=17532 --rate=16276 --output=WAV\RD6004_2.wav SD4\RD6004.SD4
SegaPCM.exe --start=32 --length=138000 --rate=16276 --output=WAV\RD6501_1.wav SD4\RD6501.SD4
SegaPCM.exe --start=138032 --rate=16276 --output=WAV\RD6501_2.wav SD4\RD6501.SD4
SegaPCM.exe --start=32 --length=80000 --rate=16276 --output=WAV\RD7406_1.wav SD4\RD7406.SD4
SegaPCM.exe --start=80032 --rate=16276 --output=WAV\RD7406_2.wav SD4\RD7406.SD4
SegaPCM.exe --start=32 --length=85000 --rate=16276 --output=WAV\RD7502_1.wav SD4\RD7502.SD4
SegaPCM.exe --start=85032 --rate=16276 --output=WAV\RD7502_2.wav SD4\RD7502.SD4
SegaPCM.exe --start=32 --length=45000 --rate=16276 --output=WAV\RD7601_1.wav SD4\RD7601.SD4
SegaPCM.exe --start=45032 --rate=16276 --output=WAV\RD7601_2.wav SD4\RD7601.SD4
SegaPCM.exe --start=32 --length=68000 --rate=16276 --output=WAV\RD7709_1.wav SD4\RD7709.SD4
SegaPCM.exe --start=68032 --rate=16276 --output=WAV\RD7709_2.wav SD4\RD7709.SD4
SegaPCM.exe --start=32 --length=22000 --rate=16276 --output=WAV\RD7710_1.wav SD4\RD7710.SD4
SegaPCM.exe --start=22032 --rate=16276 --output=WAV\RD7710_2.wav SD4\RD7710.SD4
SegaPCM.exe --start=32 --length=43000 --rate=16276 --output=WAV\RD8116_1.wav SD4\RD8116.SD4
SegaPCM.exe --start=43032 --rate=16276 --output=WAV\RD8116_2.wav SD4\RD8116.SD4
SegaPCM.exe --start=32 --length=30000 --rate=16276 --output=WAV\RE0302A_1.wav SD4\RE0302A.SD4
SegaPCM.exe --start=30032 --rate=16276 --output=WAV\RE0302A_2.wav SD4\RE0302A.SD4
SegaPCM.exe --start=32 --length=20000 --rate=16276 --output=WAV\RE2901A_1.wav SD4\RE2901A.SD4
SegaPCM.exe --start=20032 --rate=16276 --output=WAV\RE2901A_2.wav SD4\RE2901A.SD4
SegaPCM.exe --start=32 --length=30000 --rate=16276 --output=WAV\RE2901B_1.wav SD4\RE2901B.SD4
SegaPCM.exe --start=30032 --rate=16276 --output=WAV\RE2901B_2.wav SD4\RE2901B.SD4
SegaPCM.exe --start=32 --length=111000 --rate=16276 --output=WAV\RE4001H_1.wav SD4\RE4001H.SD4
SegaPCM.exe --start=110032 --rate=16276 --output=WAV\RE4001H_2.wav SD4\RE4001H.SD4
SegaPCM.exe --start=32 --length=100000 --rate=16276 --output=WAV\RE4501C_1.wav SD4\RE4501C.SD4
SegaPCM.exe --start=100032 --rate=16276 --output=WAV\RE4501C_2.wav SD4\RE4501C.SD4
SegaPCM.exe --start=32 --length=73000 --rate=16276 --output=WAV\RE4601B_1.wav SD4\RE4601B.SD4
SegaPCM.exe --start=73032 --rate=16276 --output=WAV\RE4601B_2.wav SD4\RE4601B.SD4
SegaPCM.exe --start=32 --length=33000 --rate=16276 --output=WAV\RE5402_1.wav SD4\RE5402.SD4
SegaPCM.exe --start=33032 --rate=16276 --output=WAV\RE5402_2.wav SD4\RE5402.SD4
SegaPCM.exe --start=32 --length=70000 --rate=16276 --output=WAV\RE6202B_1.wav SD4\RE6202B.SD4
SegaPCM.exe --start=70032 --rate=16276 --output=WAV\RE6202B_2.wav SD4\RE6202B.SD4
SegaPCM.exe --start=32 --length=70000 --rate=16276 --output=WAV\RE6301B_1.wav SD4\RE6301B.SD4
SegaPCM.exe --start=70032 --rate=16276 --output=WAV\RE6301B_2.wav SD4\RE6301B.SD4
SegaPCM.exe --start=32 --length=71000 --rate=16276 --output=WAV\RE6202D_1.wav SD4\RE6202D.SD4
SegaPCM.exe --start=71032 --rate=16276 --output=WAV\RE6202D_2.wav SD4\RE6202D.SD4
SegaPCM.exe --start=32 --length=69000 --rate=16276 --output=WAV\RE6301D_1.wav SD4\RE6301D.SD4
SegaPCM.exe --start=69032 --rate=16276 --output=WAV\RE6301D_2.wav SD4\RE6301D.SD4
SegaPCM.exe --start=32 --length=89000 --rate=16276 --output=WAV\RE6506_1.wav SD4\RE6506.SD4
SegaPCM.exe --start=89032 --rate=16276 --output=WAV\RE6506_2.wav SD4\RE6506.SD4
SegaPCM.exe --start=32 --length=55000 --rate=16276 --output=WAV\RE6518_1.wav SD4\RE6518.SD4
SegaPCM.exe --start=55032 --rate=16276 --output=WAV\RE6518_2.wav SD4\RE6518.SD4
SegaPCM.exe --start=32 --length=20000 --rate=16276 --output=WAV\RE8201_1.wav SD4\RE8201.SD4
SegaPCM.exe --start=20032 --rate=16276 --output=WAV\RE8201_2.wav SD4\RE8201.SD4
SegaPCM.exe --start=32 --length=60000 --rate=16276 --output=WAV\RE8302_1.wav SD4\RE8302.SD4
SegaPCM.exe --start=60032 --rate=16276 --output=WAV\RE8302_2.wav SD4\RE8302.SD4
SegaPCM.exe --start=32 --length=84000 --rate=16276 --output=WAV\RE8303_1.wav SD4\RE8303.SD4
SegaPCM.exe --start=84032 --rate=16276 --output=WAV\RE8303_2.wav SD4\RE8303.SD4
SegaPCM.exe --start=32 --length=38000 --rate=16276 --output=WAV\RF0501B_1.wav SD4\RF0501B.SD4
SegaPCM.exe --start=38032 --rate=16276 --output=WAV\RF0501B_2.wav SD4\RF0501B.SD4
SegaPCM.exe --start=32 --length=86000 --rate=16276 --output=WAV\RD6511_1.wav SD4\RD6511.SD4
SegaPCM.exe --start=86032 --rate=16276 --output=WAV\RD6511_2.wav SD4\RD6511.SD4
SegaPCM.exe --start=32 --length=105000 --rate=16276 --output=WAV\RD4001I_1.wav SD4\RD4001I.SD4
SegaPCM.exe --start=105032 --rate=16276 --output=WAV\RD4001I_2.wav SD4\RD4001I.SD4
echo === Done extracting! Now run process_wav.bat ===