﻿while (!ProcessExist("Spotify.exe") | !ProcessExist("Lyricify for Spotify.exe")) ; Spotify和Lyricify未全部启动
{
    if (!ProcessExist("Spotify.exe")) ; 若Spotify未启动，启动Spotify
        Run "C:\Users\Fayez\AppData\Roaming\Spotify\Spotify.exe" ; 修改为自己的Spotify.exe路径
    if (!ProcessExist("Lyricify for Spotify.exe")) ; 若Lyricify未启动，启动Lyricify并隐藏窗口
    {
        Run "C:\Users\Fayez\AppData\Local\Lyricify 4\Lyricify for Spotify.exe" ; 修改为自己的Lycrify for Spotify.exe路径
        WinWait "Lyricify for Spotify"       
        WinClose 
    }
    Sleep 5000 ; 等待5s
    if (ProcessExist("Spotify.exe") && ProcessExist("Lyricify for Spotify.exe")) ; Spotify和Lyricify都启动，退出脚本
        ExitApp
}