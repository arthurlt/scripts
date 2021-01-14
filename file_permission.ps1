$items = Get-ChildItem -Path "\\sbs2011\d$\@GMT-2017.09.05-18.02.19\Data\users"

foreach ($item in $items) {
    if (Test-Path ("\\sbs2011\d$\Data\users\$item")) {
        Get-Acl -Path "\\sbs2011\d$\@GMT-2017.09.05-18.02.19\Data\users\$item" | Set-Acl -Path "\\sbs2011\d$\Data\users\$item"
        Write-Host "$item Done"
    } else {
        Write-Host "$item skipped"
    }   
}