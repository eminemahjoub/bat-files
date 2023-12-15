@echo off
:menu
cls
echo Batch Calculator
echo ----------------
echo 1. Addition
echo 2. Subtraction
echo 3. Multiplication
echo 4. Division
echo 5. Exit

set /p choice=Enter your choice (1-5): 

if "%choice%"=="5" goto :eof

set /p num1=Enter the first number: 
set /p num2=Enter the second number: 

if "%choice%"=="1" (
    set /a result=num1+num2
) else if "%choice%"=="2" (
    set /a result=num1-num2
) else if "%choice%"=="3" (
    set /a result=num1*num2
) else if "%choice%"=="4" (
    if %num2%==0 (
        echo Error: Division by zero
        pause
        goto :menu
    ) else (
        set /a result=num1/num2
    )
) else (
    echo Invalid choice
    pause
    goto :menu
)

echo Result: %result%
pause
goto :menu
