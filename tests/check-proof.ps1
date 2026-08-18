$checker = Join-Path $PSScriptRoot "..\tools\check-portable-model.ps1"
$accepted = & pwsh -NoProfile -File $checker (Join-Path $PSScriptRoot "..\models\example-performance.json")
if ($LASTEXITCODE -ne 0 -or $accepted -notmatch '^OK ') { throw "portable example was not accepted" }

$rejected = & pwsh -NoProfile -File $checker (Join-Path $PSScriptRoot "fixtures\invalid-model.json")
$rejectedText = $rejected -join "`n"
if ($LASTEXITCODE -ne 2 -or
    $rejectedText -notmatch 'schemaVersion must equal 0.2' -or
    $rejectedText -notmatch 'missing required field: decisions') {
    throw "invalid model did not produce the expected structured failures"
}
Write-Output "PASS accepted portable example and rejected invalid model"
