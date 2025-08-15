@echo off
setlocal enabledelayedexpansion

REM Use ffmpeg from PATH
set "FFMPEG=ffmpeg"

REM Output folder
set "OUTDIR=optimized"
if not exist "%OUTDIR%" mkdir "%OUTDIR%"

for %%F in (*.mp4) do (
  echo Processing: %%~nxF
  "%FFMPEG%" -hide_banner -y -i "%%F" -c copy -movflags +faststart "%OUTDIR%\%%~nF.mp4"
)

echo.
echo All done. Files in "%OUTDIR%".
pause
