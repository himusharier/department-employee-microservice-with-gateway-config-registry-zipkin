@echo off
setlocal

echo Starting backend services...

:: Base directory = where this .bat file exists
set BASE_DIR=%~dp0

wt ^
new-tab -d "%BASE_DIR%service-registry" cmd /k "mvnw.cmd spring-boot:run" ^
; new-tab -d "%BASE_DIR%config-server" cmd /k "mvnw.cmd spring-boot:run" ^
; new-tab -d "%BASE_DIR%department-service" cmd /k "mvnw.cmd spring-boot:run" ^
; new-tab -d "%BASE_DIR%employee-service" cmd /k "mvnw.cmd spring-boot:run" ^
; new-tab -d "%BASE_DIR%api-gateway" cmd /k "mvnw.cmd spring-boot:run"

echo All backend services launched in separate tabs.

endlocal