param([Parameter(Mandatory)][string]$Path)

try {
    $model = Get-Content $Path -Raw -ErrorAction Stop | ConvertFrom-Json -ErrorAction Stop
} catch {
    Write-Output "ERROR cannot parse model: $Path"
    exit 2
}

$errors = [System.Collections.Generic.List[string]]::new()
if ($model.schemaVersion -ne "0.2") { $errors.Add("schemaVersion must equal 0.2") }
foreach ($field in @("asOf", "outcome", "candidates", "trajectory", "decisions")) {
    if ($model.PSObject.Properties.Name -notcontains $field) {
        $errors.Add("missing required field: $field")
    }
}
foreach ($field in @("candidates", "trajectory", "decisions")) {
    if ($model.PSObject.Properties.Name -contains $field -and $model.$field -isnot [Array]) {
        $errors.Add("$field must be an array")
    }
}
$allowedTop = @("schemaVersion", "asOf", "outcome", "cohorts", "snapshot", "candidates", "trajectory", "decisions", "goalChanges")
foreach ($field in $model.PSObject.Properties.Name) {
    if ($field -notin $allowedTop) { $errors.Add("unsupported top-level field: $field") }
}

if ($errors.Count) {
    $errors | Sort-Object | ForEach-Object { Write-Output "ERROR $_" }
    exit 2
}
Write-Output "OK $Path"
