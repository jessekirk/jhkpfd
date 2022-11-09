function newfilefolderdatetimeZ
{
    param([switch]$directory, [switch]$logfile)

    if ($directory.IsPresent)
    {
        New-Item -Path $(Get-Location).Path -Name $(Get-Date).ToUniversalTime().ToString('yyyyMMddTHHmmssfffZ') -ItemType Directory
    }

    if ($logfile.IsPresent)
    {
        New-Item -Path $(Get-Location).Path -Name $(Get-Date).ToUniversalTime().ToString('yyyyMMddTHHmmssfffZ' + '.LOG') -ItemType File
    }
}