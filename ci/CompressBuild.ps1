param(
  [String] $Configuration,
	[String] $Platform
)

[String]$Root = Get-Location
$compress = @{
  Path = "$Root\output"
  CompressionLevel = "Fastest"
  DestinationPath = "$Root\Package-$Platform-$Configuration.zip"
}

Compress-Archive @compress

exit $LASTEXITCODE