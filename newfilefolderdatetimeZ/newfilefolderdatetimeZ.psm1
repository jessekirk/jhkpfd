function newfilefolderdatetimeZ
{
    param([switch]$console, [switch]$directory, [switch]$logfile)

    if ($console.IsPresent)
    {
        $(Get-Date).ToUniversalTime().ToString('yyyyMMddTHHmmssfffZ')
    }

    if ($directory.IsPresent)
    {
        New-Item -Path $(Get-Location).Path -Name $(Get-Date).ToUniversalTime().ToString('yyyyMMddTHHmmssfffZ') -ItemType Directory
    }

    if ($logfile.IsPresent)
    {
        New-Item -Path $(Get-Location).Path -Name $(Get-Date).ToUniversalTime().ToString('yyyyMMddTHHmmssfffZ' + '.LOG') -ItemType File
    }
}