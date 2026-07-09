Set-Location "D:\BaiduSyncdisk\denglx\notes"

$git = ".\notes-git.cmd"
$commitMessage = "notes: daily " + (Get-Date -Format "yyyy-MM-dd")

& $git add .

$changes = & $git status --short
if (-not $changes) {
    exit 0
}

& $git commit -m $commitMessage
if ($LASTEXITCODE -ne 0) {
    throw "Git commit failed."
}

& $git push
