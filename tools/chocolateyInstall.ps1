$PackageName = 'LuaBuglight'
$url = 'http://blogs.msdn.com/cfs-file.ashx/__key/communityserver-components-postattachments/00-10-62-49-95/LuaBuglight.zip' # download url
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$AppPathKey = "Registry::HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\$exeName"
If (!(Test-Path $AppPathKey)) {New-Item "$AppPathKey" | Out-Null}
Set-ItemProperty -Path $AppPathKey -Name "(Default)" -Value "$env:chocolateyinstall\lib\$packagename\tools\$exeName"
Set-ItemProperty -Path $AppPathKey -Name "Path" -Value "$env:chocolateyinstall\lib\$packagename\tools\"
If (Test-Path "$env:chocolateyinstall\bin\$exeName") {Remove-Item "$env:chocolateyinstall\bin\$exeName" -Force -EA SilentlyContinue}

Write-Output "***********************************************************************************************************************"
Write-Output "*  INSTRUCTIONS: In a new, non-admin prompt or in explorer, type `"luabuglight.exe`" to start luabuglight.            *"
Write-Output "*  You may also type `"$exeName`" In the search prompt of your start menu                                             *"
Write-Output "***********************************************************************************************************************"
