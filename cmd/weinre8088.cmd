for /F "tokens=2 delims=:" %%i in ('ipconfig^|find /i "IPv4 地址"^|find "10."') do (
  start weinre --httpPort 8088 --boundHost %%i --debug true 
  start ngrok http %%i:8088
)
