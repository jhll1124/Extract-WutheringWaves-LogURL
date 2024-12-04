$gamePath="D:\Game\Wuthering Waves\Wuthering Waves Game";
$logFile="$gamePath\Client\Saved\Logs\Client.log";
if(-not(Test-Path $logFile)){
    Write-Host "`nThe file '$logFile' does not exist." -ForegroundColor Red;
    Write-Host "Did you set your Game Installation Path properly?" -ForegroundColor Magenta;
    Read-Host "Press any key to exit";
    exit}
$latestUrlEntry=Get-Content $logFile | Select-String -Pattern "https://aki-gm-resources-oversea.aki-game.net|https://aki-gm-resources.aki-game.com" | Select-Object -Last 1;
if($null -ne $latestUrlEntry){
    $urlPattern='url":"(.*?)"';
    $url=[regex]::Match($latestUrlEntry.ToString(),$urlPattern).Groups[1].Value;
    if($url){
        Write-Host"";
        Write-Host "Convene Record URL: $url";
        Set-Clipboard $url;Write-Host"";
        Write-Host "URL copied to clipboard. Please paste to Wuwa Tracker and click the Import History button." -ForegroundColor Green
    }else{
        Write-Host "No URL found."
    }
}
else{
    Write-Host "`nNo matching entries found in the log file. Please open your Convene History first!" -ForegroundColor Red
}