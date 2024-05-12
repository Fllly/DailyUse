while (!ProcessExist("Spotify.exe") | !ProcessExist("Lyricify for Spotify.exe")) ; Spotify和Lyricify未全部启动
{
    if (!ProcessExist("Spotify.exe")) ; 若Spotify未启动，启动Spotify
        Run "C:\Users\Fayez\AppData\Roaming\Spotify\Spotify.exe"
    if (!ProcessExist("Lyricify for Spotify.exe")) ; 若Lyricify未启动，启动Lyricify并隐藏窗口
    {
        Run "C:\Users\Fayez\AppData\Local\Lyricify 4\Lyricify for Spotify.exe"
        WinWait "Lyricify for Spotify"       
        WinHide 
    }
    Sleep 5000 ; 等待5s
    if (ProcessExist("Spotify.exe") && ProcessExist("Lyricify for Spotify.exe")) ; Spotify和Lyricify都启动，退出脚本
        ExitApp
}