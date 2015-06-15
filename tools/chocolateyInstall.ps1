$packageName = 'LuaBuglight' # arbitrary name for the package, used in messages
$url = 'http://blogs.msdn.com/cfs-file.ashx/__key/communityserver-components-postattachments/00-10-37-28-54/LuaBuglight.zip' # download url
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Write-Output "***********************************************************************************************************************"
Write-Output "*  INSTRUCTIONS: In a new, non-admin prompt or in explorer, type `"luabuglight.exe`" to monitor to start luabuglight. *"
Write-Output "***********************************************************************************************************************"