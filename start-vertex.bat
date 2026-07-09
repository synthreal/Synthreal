@echo off
set HTTPS_PROXY=
set HTTP_PROXY=
set GOOGLE_APPLICATION_CREDENTIALS=C:\Users\at384\Downloads\osc\dbg-grcit-dev-e1-c79e5571a5a7.json
set RUST_LOG=synthreal_runtime::drivers::vertex=debug,synthreal=info
set RUST_BACKTRACE=full
cd /d C:\Users\at384\Downloads\osc\dllm\synthreal
echo Getting access token...
for /f "tokens=*" %%a in ('gcloud auth print-access-token') do set VERTEX_AI_ACCESS_TOKEN=%%a
echo Token set, starting Synthreal...
target\debug\synthreal.exe start
pause
