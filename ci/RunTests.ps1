param(
    [String] $Configuration,
	[String] $Platform
)

$Plat_Param = ""
[String]$Root = Get-Location
$Test_Proj_Path = "$Root\testoutput\$Platform\$Configuration"

if ($Platform -eq "x64") {
  $Plat_Param = "amd64"
}
elseif ($Platform -eq "Win32") {
  $Plat_Param = "x86"
}

Write-Output "---------- Run tests ----------"
cd $Test_Proj_Path
.\DriverTest.exe --gtest_output=xml:$Root\DriverTestResult.xml

Write-Output "---------- Test finished ----------"

exit $LASTEXITCODE