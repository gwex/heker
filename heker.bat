@echo off
cls
echo Pilih jenis akun yang ingin Anda akses:
echo 1. Facebook
echo 2. Instagram
echo 3. Gmail
echo 4. TikTok
set /p pilihan=Masukkan nomor pilihan (1/2/3/4): 

if "%pilihan%"=="1" (
    echo Anda memilih Facebook.
    set /p fbLink=Masukkan nama atau link Facebook Anda: 
    echo Password Facebook Anda adalah: %fbLink%
    echo Mencari data akun Facebook...
    call :loading_animation
    echo Data akun Facebook yang anda cari tidak terdapat dalam database kami, silahkan hubungi polisi terdekat..
    rem Tambahkan kode untuk Facebook di sini
) else if "%pilihan%"=="2" (
    echo Anda memilih Instagram.
    set /p igLink=Masukkan nama atau link Instagram Anda: 
    echo Password Instagram Anda adalah: %igLink%
    echo Mencari data akun Instagram...
    call :loading_animation
    echo Data akun Instagram yang anda cari tidak terdapat dalam database kami, silahkan hubungi polisi terdekat..
    rem Tambahkan kode untuk Instagram di sini
) else if "%pilihan%"=="3" (
    echo Anda memilih Gmail.
    set /p gmailLink=Masukkan alamat Gmail Anda: 
    echo Password Gmail Anda adalah: %gmailLink%
    echo Mencari data akun Gmail...
    call :loading_animation
    echo Data akun Gmail yang anda cari tidak terdapat dalam database kami, silahkan hubungi polisi terdekat..
    rem Tambahkan kode untuk Gmail di sini
) else if "%pilihan%"=="4" (
    echo Anda memilih TikTok.
    set /p tiktokLink=Masukkan nama atau link TikTok Anda: 
    echo Password TikTok Anda adalah: %tiktokLink%
    echo Mencari data akun TikTok...
    call :loading_animation
    echo Data akun TikTok yang anda cari tidak terdapat dalam database kami, silahkan hubungi polisi terdekat..
    rem Tambahkan kode untuk TikTok di sini
) else (
    echo Pilihan tidak valid. Silakan pilih antara 1 hingga 4.
)

pause
exit /b

:loading_animation
setlocal EnableDelayedExpansion
for /L %%i in (1,1,10) do (
    set /a progress=%%i*10
    echo !progress!%%
    ping -n 10 127.0.0.1 >nul
)
endlocal
exit /b
