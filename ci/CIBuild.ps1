param(
    [String] $Configuration,
	[String] $Platform
)

$Plat_Param = ""
[String]$Root = Get-Location

if ($Platform -eq "x64") {
  $Plat_Param = "amd64"
}
elseif ($Platform -eq "Win32") {
  $Plat_Param = "x86"
}

cmd.exe -/c call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\VC\Auxiliary\Build\vcvarsall.bat" $Plat_Param

Write-Output "---------- Build Driver ----------"

msbuild $Root/Actions.sln -maxcpucount:4 /t:Driver:rebuild /p:configuration=$Configuration /p:platform=$Platform

Write-Output "---------- Build finished ----------"

exit $LASTEXITCODE