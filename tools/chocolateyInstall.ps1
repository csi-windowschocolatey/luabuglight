$packageName = 'LuaBuglight' # arbitrary name for the package, used in messages
$url = 'http://blogs.msdn.com/cfs-file.ashx/__key/communityserver-components-postattachments/00-10-37-28-54/LuaBuglight.zip' # download url
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Write-Output "***********************************************************************************"
Write-Output "*  INSTRUCTIONS: Type `"apimonitor-x86.exe`" to monitor 32-bit Windows processes. *"
Write-Output "*                Type `"apimonitor-x64.exe`" to monitor 64-bit Windows processes. *"
Write-Output "*       More Info: http://www.rohitab.com/apimonitor                              *"
Write-Output "***********************************************************************************"
