@echo off
chcp 65001
set OUTPUT_DIR_NAME=output


if not exist %OUTPUT_DIR_NAME% (
  echo 創建output資料夾
  mkdir %OUTPUT_DIR_NAME%
)

for /D %%D in (*) do (
  if /I not "%%D" == "%OUTPUT_DIR_NAME%" (
    for %%J in ("%%D\\*") do (
      copy /B /Y "%%~fJ" "%OUTPUT_DIR_NAME%\\%%D-%%~nxJ" > nul
    )
  )
)

echo 輸出成功

pause
