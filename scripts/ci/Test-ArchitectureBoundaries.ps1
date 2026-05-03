param(
    [string]$SourceRoot = "src/app"
)

$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest

$errors = New-Object System.Collections.Generic.List[string]
$featureFiles = @(Get-ChildItem -LiteralPath "$SourceRoot/features" -Recurse -File -Include "*.ts" -ErrorAction SilentlyContinue)

foreach ($file in $featureFiles) {
    $relativePath = [System.IO.Path]::GetRelativePath((Resolve-Path -LiteralPath ".").Path, $file.FullName).Replace("\", "/")
    $content = Get-Content -LiteralPath $file.FullName -Raw
    $featureMatch = [regex]::Match($relativePath, "^src/app/features/([^/]+)/")
    if (-not $featureMatch.Success) {
        continue
    }

    $currentFeature = $featureMatch.Groups[1].Value
    $imports = [regex]::Matches($content, "from\s+['""]([^'""]+)['""]") | ForEach-Object { $_.Groups[1].Value }
    foreach ($import in $imports) {
        $otherFeatureMatch = [regex]::Match($import, "features/([^/]+)")
        if ($otherFeatureMatch.Success -and $otherFeatureMatch.Groups[1].Value -ne $currentFeature) {
            $errors.Add("$relativePath imports another feature directly: $import")
        }
    }
}

if ($errors.Count -gt 0) {
    $errors | ForEach-Object { Write-Host "Architecture boundary error: $_" }
    throw "Architecture boundary validation failed with $($errors.Count) error(s)."
}

Write-Host "Architecture boundary validation passed."

