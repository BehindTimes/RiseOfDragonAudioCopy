for %%f in (*.sd4) do (
    echo %%~nf
    Project1.exe --start=32 --rate=16276 %%~nf.sd4
)

Project1.exe --start=32 --length=20000 --rate=16276 --output=RD6504_1.wav RD6504.SD4
Project1.exe --start=20032 --rate=16276 --output=RD6504_2.wav RD6504.SD4
Project1.exe --start=32 --length=65500 --rate=16276 --output=RD0201A_1.wav RD0201A.SD4
Project1.exe --start=65532 --rate=16276 --output=RD0201A_2.wav RD0201A.SD4
Project1.exe --start=32 --length=50000 --rate=16276 --output=RD2201A_1.wav RD2201A.SD4
Project1.exe --start=50032 --rate=16276 --output=RD2201A_2.wav RD2201A.SD4
Project1.exe --start=32 --length=35000 --rate=16276 --output=RD2605B_1.wav RD2605B.SD4
Project1.exe --start=35032 --rate=16276 --output=RD2605B_2.wav RD2702.SD4
Project1.exe --start=32 --length=30000 --rate=16276 --output=RD2702_1.wav RD2702.SD4
Project1.exe --start=30032 --rate=16276 --output=RD2702_2.wav RD2702.SD4
Project1.exe --start=32 --length=35000 --rate=16276 --output=RD4004B_1.wav RD4004B.SD4
Project1.exe --start=35032 --rate=16276 --length=39000 --output=RD4004B_2.wav RD4004B.SD4
Project1.exe --start=74032 --rate=16276 --output=RD4004B_3.wav RD4004B.SD4
Project1.exe --start=32 --length=45000 --rate=16276 --output=RD4602B_1.wav RD4602B.SD4
Project1.exe --start=45032 --rate=16276 --output=RD4602B_2.wav RD4602B.SD4
Project1.exe --start=32 --length=112000 --rate=16276 --output=RE2605B_1.wav RE2605B.SD4
Project1.exe --start=112032 --rate=16276 --output=RE2605B_2.wav RE2605B.SD4
Project1.exe --start=32 --length=32000 --rate=16276 --output=RD5701A_1.wav RD5701A.SD4
Project1.exe --start=32032 --rate=16276 --output=RD5701A_2.wav RD5701A.SD4
Project1.exe --start=32 --length=32000 --rate=16276 --output=RD5901_1.wav RD5901.SD4
Project1.exe --start=32032 --rate=16276 --output=RD5901_2.wav RD5901.SD4
Project1.exe --start=32 --length=18000 --rate=16276 --output=RD6004_1.wav RD6004.SD4
Project1.exe --start=18032 --rate=16276 --output=RD6004_2.wav RD6004.SD4
Project1.exe --start=32 --length=138000 --rate=16276 --output=RD6501_1.wav RD6501.SD4
Project1.exe --start=138032 --rate=16276 --output=RD6501_2.wav RD6501.SD4
Project1.exe --start=32 --length=80000 --rate=16276 --output=RD7406_1.wav RD7406.SD4
Project1.exe --start=80032 --rate=16276 --output=RD7406_2.wav RD7406.SD4
Project1.exe --start=32 --length=85000 --rate=16276 --output=RD7502_1.wav RD7502.SD4
Project1.exe --start=85032 --rate=16276 --output=RD7502_2.wav RD7502.SD4
Project1.exe --start=32 --length=45000 --rate=16276 --output=RD7601_1.wav RD7601.SD4
Project1.exe --start=45032 --rate=16276 --output=RD7601_2.wav RD7601.SD4
Project1.exe --start=32 --length=68000 --rate=16276 --output=RD7709_1.wav RD7709.SD4
Project1.exe --start=68032 --rate=16276 --output=RD7709_2.wav RD7709.SD4
Project1.exe --start=32 --length=22000 --rate=16276 --output=RD7710_1.wav RD7710.SD4
Project1.exe --start=22032 --rate=16276 --output=RD7710_2.wav RD7710.SD4
Project1.exe --start=32 --length=43000 --rate=16276 --output=RD8116_1.wav RD8116.SD4
Project1.exe --start=43032 --rate=16276 --output=RD8116_2.wav RD8116.SD4
Project1.exe --start=32 --length=30000 --rate=16276 --output=RE0302A_1.wav RE0302A.SD4
Project1.exe --start=30032 --rate=16276 --output=RE0302A_2.wav RE0302A.SD4
Project1.exe --start=32 --length=20000 --rate=16276 --output=RE2901A_1.wav RE2901A.SD4
Project1.exe --start=20032 --rate=16276 --output=RE2901A_2.wav RE2901A.SD4
Project1.exe --start=32 --length=30000 --rate=16276 --output=RE2901B_1.wav RE2901B.SD4
Project1.exe --start=30032 --rate=16276 --output=RE2901B_2.wav RE2901B.SD4
Project1.exe --start=32 --length=111000 --rate=16276 --output=RE4001H_1.wav RE4001H.SD4
Project1.exe --start=110032 --rate=16276 --output=RE4001H_2.wav RE4001H.SD4
Project1.exe --start=32 --length=100000 --rate=16276 --output=RE4501C_1.wav RE4501C.SD4
Project1.exe --start=100032 --rate=16276 --output=RE4501C_2.wav RE4501C.SD4
Project1.exe --start=32 --length=73000 --rate=16276 --output=RE4601B_1.wav RE4601B.SD4
Project1.exe --start=73032 --rate=16276 --output=RE4601B_2.wav RE4601B.SD4
Project1.exe --start=32 --length=33000 --rate=16276 --output=RE5402_1.wav RE5402.SD4
Project1.exe --start=33032 --rate=16276 --output=RE5402_2.wav RE5402.SD4
Project1.exe --start=32 --length=70000 --rate=16276 --output=RE6202B_1.wav RE6202B.SD4
Project1.exe --start=70032 --rate=16276 --output=RE6202B_2.wav RE6202B.SD4
Project1.exe --start=32 --length=70000 --rate=16276 --output=RE6301B_1.wav RE6301B.SD4
Project1.exe --start=70032 --rate=16276 --output=RE6301B_2.wav RE6301B.SD4
Project1.exe --start=32 --length=71000 --rate=16276 --output=RE6202D_1.wav RE6202D.SD4
Project1.exe --start=71032 --rate=16276 --output=RE6202D_2.wav RE6202D.SD4
Project1.exe --start=32 --length=69000 --rate=16276 --output=RE6301D_1.wav RE6301D.SD4
Project1.exe --start=69032 --rate=16276 --output=RE6301D_2.wav RE6301D.SD4
Project1.exe --start=32 --length=89000 --rate=16276 --output=RE6506_1.wav RE6506.SD4
Project1.exe --start=89032 --rate=16276 --output=RE6506_2.wav RE6506.SD4
Project1.exe --start=32 --length=55000 --rate=16276 --output=RE6518_1.wav RE6518.SD4
Project1.exe --start=55032 --rate=16276 --output=RE6518_2.wav RE6518.SD4
Project1.exe --start=32 --length=20000 --rate=16276 --output=RE8201_1.wav RE8201.SD4
Project1.exe --start=20032 --rate=16276 --output=RE8201_2.wav RE8201.SD4
Project1.exe --start=32 --length=44000 --rate=16276 --output=RE8302_1.wav RE8302.SD4
Project1.exe --start=44032 --rate=16276 --output=RE8302_2.wav RE8302.SD4
Project1.exe --start=32 --length=84000 --rate=16276 --output=RE8302_1.wav RE8303.SD4
Project1.exe --start=44032 --rate=16276 --output=RE8302_2.wav RE8303.SD4
Project1.exe --start=32 --length=38000 --rate=16276 --output=RF0501B_1.wav RF0501B.SD4
Project1.exe --start=38032 --rate=16276 --output=RE8302_2.wav RF0501B.SD4
Project1.exe --start=32 --length=86000 --rate=16276 --output=RD6511_1.wav RD6511.SD4
Project1.exe --start=86032 --rate=16276 --output=RD6511_2.wav RD6511.SD4