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

cmd.exe -/c call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat" $Plat_Param 
msbuild $Root/Actions.sln -maxcpucount:4 /t:DriverTest:rebuild /p:configuration=$Configuration /p:platform=$Platform

exit $LASTEXITCODE


