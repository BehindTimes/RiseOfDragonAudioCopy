@echo off
cd WAV

echo === Running RemovePop on initial WAV files ===
for %%f in (*.wav) do (
    ..\RemovePop.exe "%%~nf.wav"
)

echo === Combining split wave files ===
..\CombineWave.exe RD6501_2.wav RE6501.wav RD6501_c.wav
..\CombineWave.exe RD6506.wav RE6506_1.wav RD6506_c.wav
..\CombineWave.exe RD6521.wav RE6521.wav RF6521.wav RD6521_c.wav
..\CombineWave.exe RD6522.wav RE6522.wav RD6522_c.wav
..\CombineWave.exe RD6518.wav RE6518_1.wav RD6518_c.wav
..\CombineWave.exe RD0301.wav RE0301.wav RD0301_c.wav
..\CombineWave.exe RE4501A.wav RF4501A.wav RG4501A.wav RE4501A_c.wav
..\CombineWave.exe RD4501C.wav RE4501C_1.wav RD4501C_c.wav
..\CombineWave.exe RD7401.wav RE7401.wav RD7401_c.wav
..\CombineWave.exe RE2023B.wav RF2023B.wav RE2023B_c.wav
..\CombineWave.exe RD3102.wav RE3102.wav RD3102_c.wav
..\CombineWave.exe RD7102.wav RE7102.wav RD7102_c.wav
..\CombineWave.exe RD3005A.wav RE3005A.wav RD3005A_c.wav
..\CombineWave.exe RD3010B.wav RE3010B.wav RF3010B.wav RD3010B_c.wav
..\CombineWave.exe RD3010C2.wav RE3010C2.wav RF3010C2.wav RD3010C2_c.wav
..\CombineWave.exe RD3010D.wav RE3010D.wav RD3010D_c.wav
..\CombineWave.exe RD3010F.wav RE3010F.wav RD3010F_c.wav
..\CombineWave.exe RD3010G.wav RE3010G.wav RD3010G_c.wav
..\CombineWave.exe RD7202.wav RE7202.wav RD7202_c.wav
..\CombineWave.exe RD8302.wav RE8302_1.wav RD8302_c.wav
..\CombineWave.exe RD8303.wav RE8303_1.wav RD8303_c.wav
..\CombineWave.exe RE8303_2.wav RF8303.wav RF8303_c.wav
..\CombineWave.exe RE8302_2.wav RF8302.wav RF8302_c.wav
..\CombineWave.exe RF3410.wav RG3410.wav RF3410_c.wav
..\CombineWave.exe RD6905.wav RE6905.wav RD6905_c.wav
..\CombineWave.exe RD8205.wav RE8205.wav RD8205_c.wav
..\CombineWave.exe RD8201.wav RE8201_1.wav RD8201_c.wav
..\CombineWave.exe RE8201_2.wav RD8202.wav RE8202.wav RF8202.wav RF8202_c.wav
..\CombineWave.exe RE5304.wav RF5304.wav RE5304_c.wav
..\CombineWave.exe RD8401.wav RE8401.wav RD8401_c.wav
..\CombineWave.exe RF8401.wav RG8401.wav RF8401_c.wav
..\CombineWave.exe RE4001H_2.wav RF4001H.wav RF4001H_c.wav
..\CombineWave.exe RD6202B.wav RE6202B_1.wav RD6202B_c.wav
..\CombineWave.exe RE6202B_2.wav RF6202B.wav RF6202B_c.wav
..\CombineWave.exe RD6301B.wav RE6301B_1.wav RD6301B_c.wav
..\CombineWave.exe RE6301B_2.wav RF6301B.wav RF6301B_c.wav
..\CombineWave.exe RD4901B.wav RE4901B.wav RF4901B.wav RD4901B_c.wav
..\CombineWave.exe RD8501A.wav RE8501A.wav RF8501A.wav RD8501A_c.wav
..\CombineWave.exe RD6202D.wav RE6202D_1.wav RD6202D_c.wav
..\CombineWave.exe RD6301D.wav RE6301D_1.wav RD6301D_c.wav
..\CombineWave.exe RD7408.wav RE7408.wav RD7408_c.wav
..\CombineWave.exe RE4501C_2.wav RF4501C.wav RF4501C_c.wav

echo === Running RemovePop on combined wave files ===
for %%f in (*_c.wav) do (
    ..\RemovePop.exe "%%~nf_c.wav"
)

cd ..
echo === Running audiocopy via native .NET ===
dotnet run --roll-forward Major --project audiocopy/audiocopy.csproj
echo === Done! The audio is ready in WAV/audio_back ===