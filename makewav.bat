for %%f in (*.sd4) do (
    echo %%~nf
    SegaPCM.exe --start=32 --rate=16276 %%~nf.sd4
)

SegaPCM.exe --start=32 --length=20000 --rate=16276 --output=RD6504_1.wav RD6504.SD4
SegaPCM.exe --start=20032 --rate=16276 --output=RD6504_2.wav RD6504.SD4
SegaPCM.exe --start=32 --length=63500 --rate=16276 --output=RD0201A_1.wav RD0201A.SD4
SegaPCM.exe --start=63532 --rate=16276 --output=RD0201A_2.wav RD0201A.SD4
SegaPCM.exe --start=32 --length=50000 --rate=16276 --output=RD2201A_1.wav RD2201A.SD4
SegaPCM.exe --start=50032 --rate=16276 --output=RD2201A_2.wav RD2201A.SD4
SegaPCM.exe --start=32 --length=35000 --rate=16276 --output=RD2605B_1.wav RD2605B.SD4
SegaPCM.exe --start=35032 --rate=16276 --output=RD2605B_2.wav RD2605B.SD4
SegaPCM.exe --start=32 --length=30000 --rate=16276 --output=RD2702_1.wav RD2702.SD4
SegaPCM.exe --start=30032 --rate=16276 --output=RD2702_2.wav RD2702.SD4
SegaPCM.exe --start=32 --length=35000 --rate=16276 --output=RD4004B_1.wav RD4004B.SD4
SegaPCM.exe --start=35032 --rate=16276 --length=39000 --output=RD4004B_2.wav RD4004B.SD4
SegaPCM.exe --start=74032 --rate=16276 --output=RD4004B_3.wav RD4004B.SD4
SegaPCM.exe --start=32 --length=45000 --rate=16276 --output=RD4602B_1.wav RD4602B.SD4
SegaPCM.exe --start=45032 --rate=16276 --output=RD4602B_2.wav RD4602B.SD4
SegaPCM.exe --start=32 --length=112000 --rate=16276 --output=RE2605B_1.wav RE2605B.SD4
SegaPCM.exe --start=112032 --rate=16276 --output=RE2605B_2.wav RE2605B.SD4
SegaPCM.exe --start=32 --length=32000 --rate=16276 --output=RD5701A_1.wav RD5701A.SD4
SegaPCM.exe --start=32032 --rate=16276 --output=RD5701A_2.wav RD5701A.SD4
SegaPCM.exe --start=32 --length=17500 --rate=16276 --output=RD6004_1.wav RD6004.SD4
SegaPCM.exe --start=17532 --rate=16276 --output=RD6004_2.wav RD6004.SD4
SegaPCM.exe --start=32 --length=138000 --rate=16276 --output=RD6501_1.wav RD6501.SD4
SegaPCM.exe --start=138032 --rate=16276 --output=RD6501_2.wav RD6501.SD4
SegaPCM.exe --start=32 --length=80000 --rate=16276 --output=RD7406_1.wav RD7406.SD4
SegaPCM.exe --start=80032 --rate=16276 --output=RD7406_2.wav RD7406.SD4
SegaPCM.exe --start=32 --length=85000 --rate=16276 --output=RD7502_1.wav RD7502.SD4
SegaPCM.exe --start=85032 --rate=16276 --output=RD7502_2.wav RD7502.SD4
SegaPCM.exe --start=32 --length=45000 --rate=16276 --output=RD7601_1.wav RD7601.SD4
SegaPCM.exe --start=45032 --rate=16276 --output=RD7601_2.wav RD7601.SD4
SegaPCM.exe --start=32 --length=68000 --rate=16276 --output=RD7709_1.wav RD7709.SD4
SegaPCM.exe --start=68032 --rate=16276 --output=RD7709_2.wav RD7709.SD4
SegaPCM.exe --start=32 --length=22000 --rate=16276 --output=RD7710_1.wav RD7710.SD4
SegaPCM.exe --start=22032 --rate=16276 --output=RD7710_2.wav RD7710.SD4
SegaPCM.exe --start=32 --length=43000 --rate=16276 --output=RD8116_1.wav RD8116.SD4
SegaPCM.exe --start=43032 --rate=16276 --output=RD8116_2.wav RD8116.SD4
SegaPCM.exe --start=32 --length=30000 --rate=16276 --output=RE0302A_1.wav RE0302A.SD4
SegaPCM.exe --start=30032 --rate=16276 --output=RE0302A_2.wav RE0302A.SD4
SegaPCM.exe --start=32 --length=20000 --rate=16276 --output=RE2901A_1.wav RE2901A.SD4
SegaPCM.exe --start=20032 --rate=16276 --output=RE2901A_2.wav RE2901A.SD4
SegaPCM.exe --start=32 --length=30000 --rate=16276 --output=RE2901B_1.wav RE2901B.SD4
SegaPCM.exe --start=30032 --rate=16276 --output=RE2901B_2.wav RE2901B.SD4
SegaPCM.exe --start=32 --length=111000 --rate=16276 --output=RE4001H_1.wav RE4001H.SD4
SegaPCM.exe --start=110032 --rate=16276 --output=RE4001H_2.wav RE4001H.SD4
SegaPCM.exe --start=32 --length=100000 --rate=16276 --output=RE4501C_1.wav RE4501C.SD4
SegaPCM.exe --start=100032 --rate=16276 --output=RE4501C_2.wav RE4501C.SD4
SegaPCM.exe --start=32 --length=73000 --rate=16276 --output=RE4601B_1.wav RE4601B.SD4
SegaPCM.exe --start=73032 --rate=16276 --output=RE4601B_2.wav RE4601B.SD4
SegaPCM.exe --start=32 --length=33000 --rate=16276 --output=RE5402_1.wav RE5402.SD4
SegaPCM.exe --start=33032 --rate=16276 --output=RE5402_2.wav RE5402.SD4
SegaPCM.exe --start=32 --length=70000 --rate=16276 --output=RE6202B_1.wav RE6202B.SD4
SegaPCM.exe --start=70032 --rate=16276 --output=RE6202B_2.wav RE6202B.SD4
SegaPCM.exe --start=32 --length=70000 --rate=16276 --output=RE6301B_1.wav RE6301B.SD4
SegaPCM.exe --start=70032 --rate=16276 --output=RE6301B_2.wav RE6301B.SD4
SegaPCM.exe --start=32 --length=71000 --rate=16276 --output=RE6202D_1.wav RE6202D.SD4
SegaPCM.exe --start=71032 --rate=16276 --output=RE6202D_2.wav RE6202D.SD4
SegaPCM.exe --start=32 --length=69000 --rate=16276 --output=RE6301D_1.wav RE6301D.SD4
SegaPCM.exe --start=69032 --rate=16276 --output=RE6301D_2.wav RE6301D.SD4
SegaPCM.exe --start=32 --length=89000 --rate=16276 --output=RE6506_1.wav RE6506.SD4
SegaPCM.exe --start=89032 --rate=16276 --output=RE6506_2.wav RE6506.SD4
SegaPCM.exe --start=32 --length=55000 --rate=16276 --output=RE6518_1.wav RE6518.SD4
SegaPCM.exe --start=55032 --rate=16276 --output=RE6518_2.wav RE6518.SD4
SegaPCM.exe --start=32 --length=20000 --rate=16276 --output=RE8201_1.wav RE8201.SD4
SegaPCM.exe --start=20032 --rate=16276 --output=RE8201_2.wav RE8201.SD4
SegaPCM.exe --start=32 --length=60000 --rate=16276 --output=RE8302_1.wav RE8302.SD4
SegaPCM.exe --start=60032 --rate=16276 --output=RE8302_2.wav RE8302.SD4
SegaPCM.exe --start=32 --length=84000 --rate=16276 --output=RE8303_1.wav RE8303.SD4
SegaPCM.exe --start=84032 --rate=16276 --output=RE8303_2.wav RE8303.SD4
SegaPCM.exe --start=32 --length=38000 --rate=16276 --output=RF0501B_1.wav RF0501B.SD4
SegaPCM.exe --start=38032 --rate=16276 --output=RF0501B_2.wav RF0501B.SD4
SegaPCM.exe --start=32 --length=86000 --rate=16276 --output=RD6511_1.wav RD6511.SD4
SegaPCM.exe --start=86032 --rate=16276 --output=RD6511_2.wav RD6511.SD4
SegaPCM.exe --start=32 --length=105000 --rate=16276 --output=RD4001I_1.wav RD4001I.SD4
SegaPCM.exe --start=105032 --rate=16276 --output=RD4001I_2.wav RD4001I.SD4

for %%f in (*.wav) do (
    echo %%~nf
    RemovePop.exe %%~nf.wav
)

CombineWave.exe RD6501_2.wav RE6501.wav RD6501_c.wav
CombineWave.exe RD6506.wav RE6506_1.wav RD6506_c.wav
CombineWave.exe RD6521.wav RE6521.wav RF6521.wav RD6521_c.wav
CombineWave.exe RD6522.wav RE6522.wav RD6522_c.wav
CombineWave.exe RD6518.wav RE6518_1.wav RD6518_c.wav
CombineWave.exe RD0301.wav RE0301.wav RD0301_c.wav
CombineWave.exe RE4501A.wav RF4501A.wav RG4501A.wav RE4501A_c.wav
CombineWave.exe RD4501C.wav RE4501C_1.wav RD4501C_c.wav
CombineWave.exe RD7401.wav RE7401.wav RD7401_c.wav
CombineWave.exe RE2023B.wav RF2023B.wav RE2023B_c.wav
CombineWave.exe RD3102.wav RE3102.wav RD3102_c.wav
CombineWave.exe RD7102.wav RE7102.wav RD7102_c.wav
CombineWave.exe RD3005A.wav RE3005A.wav RD3005A_c.wav
CombineWave.exe RD3010B.wav RE3010B.wav RF3010B.wav RD3010B_c.wav
CombineWave.exe RD3010C2.wav RE3010C2.wav RF3010C2.wav RD3010C2_c.wav
CombineWave.exe RD3010D.wav RE3010D.wav RD3010D_c.wav
CombineWave.exe RD3010F.wav RE3010F.wav RD3010F_c.wav
CombineWave.exe RD3010G.wav RE3010G.wav RD3010G_c.wav
CombineWave.exe RD7202.wav RE7202.wav RD7202_c.wav
CombineWave.exe RD8302.wav RE8302_1.wav RD8302_c.wav
CombineWave.exe RD8303.wav RE8303_1.wav RD8303_c.wav
CombineWave.exe RE8303_2.wav RF8303.wav RF8303_c.wav
CombineWave.exe RE8302_2.wav RF8302.wav RF8302_c.wav
CombineWave.exe RF3410.wav RG3410.wav RF3410_c.wav
CombineWave.exe RD6905.wav RE6905.wav RD6905_c.wav
CombineWave.exe RD8205.wav RE8205.wav RD8205_c.wav
CombineWave.exe RD8201.wav RE8201_1.wav RD8201_c.wav
CombineWave.exe RE8201_2.wav RD8202.wav RE8202.wav RF8202.wav RF8202_c.wav
CombineWave.exe RE5304.wav RF5304.wav RE5304_c.wav
CombineWave.exe RD8401.wav RE8401.wav RD8401_c.wav
CombineWave.exe RF8401.wav RG8401.wav RF8401_c.wav
CombineWave.exe RE4001H_2.wav RF4001H.wav RF4001H_c.wav
CombineWave.exe RD6202B.wav RE6202B_1.wav RD6202B_c.wav
CombineWave.exe RE6202B_2.wav RF6202B.wav RF6202B_c.wav
CombineWave.exe RD6301B.wav RE6301B_1.wav RD6301B_c.wav
CombineWave.exe RE6301B_2.wav RF6301B.wav RF6301B_c.wav
CombineWave.exe RD4901B.wav RE4901B.wav RF4901B.wav RD4901B_c.wav
CombineWave.exe RD8501A.wav RE8501A.wav RF8501A.wav RD8501A_c.wav
CombineWave.exe RD6202D.wav RE6202D_1.wav RD6202D_c.wav
CombineWave.exe RD6301D.wav RE6301D_1.wav RD6301D_c.wav
CombineWave.exe RD7408.wav RE7408.wav RD7408_c.wav
CombineWave.exe RE4501C_2.wav RF4501C.wav RF4501C_c.wav

for %%f in (*_c.wav) do (
    echo %%~nf
    RemovePop.exe %%~nf_c.wav
)

audiocopy.exe
