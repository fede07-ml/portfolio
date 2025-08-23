# Safe restructure script: esegui in PowerShell dalla root della repo.
# 1) Esegui con -WhatIf per vedere cosa succede:
#    .\restructure_repo.ps1 -WhatIf
param(
    [switch]$WhatIf
)

$root = (Get-Location).Path
$dest = Join-Path $root "ml_projects"
$foldersToMerge = @("ML_projects", "Machine Learning Projects", "Machine Learning", "f3d3r1c07")

# Ensure destination exists
if (-not (Test-Path $dest)) {
    if ($WhatIf) { Write-Host "[WhatIf] New-Item -ItemType Directory -Path $dest" }
    else { New-Item -ItemType Directory -Path $dest | Out-Null }
}

# Consolidate any .vscode directories into root\.vscode
$rootVscode = Join-Path $root ".vscode"
$vscodeDirs = Get-ChildItem -Path $root -Directory -Recurse -ErrorAction SilentlyContinue | Where-Object { $_.Name -eq '.vscode' -and ($_.FullName -ne $rootVscode) }

if ($vscodeDirs.Count -gt 0) {
    if ($WhatIf) { Write-Host "[WhatIf] Ensure directory: $rootVscode" }
    else { if (-not (Test-Path $rootVscode)) { New-Item -ItemType Directory -Path $rootVscode | Out-Null } }

    foreach ($dir in $vscodeDirs) {
        Write-Host "Consolidating .vscode from: $($dir.FullName)"
        Get-ChildItem -Path $dir.FullName -File -Force | ForEach-Object {
            $target = Join-Path $rootVscode $_.Name
            if (Test-Path $target) {
                # backup existing target with timestamp
                $ts = (Get-Date).ToString("yyyyMMddHHmmss")
                $backup = "$target.$ts.bak"
                if ($WhatIf) {
                    Write-Host "[WhatIf] Copy '$($_.FullName)' -> '$target' (existing target will be backed up as $backup)"
                }
                else {
                    Copy-Item -Path $target -Destination $backup -Force
                    Copy-Item -Path $_.FullName -Destination $target -Force
                    Write-Host "Copied and backed up '$($_.FullName)' -> '$target' (backup: $backup)"
                }
            }
            else {
                if ($WhatIf) {
                    Write-Host "[WhatIf] Copy '$($_.FullName)' -> '$target'"
                }
                else {
                    Copy-Item -Path $_.FullName -Destination $target -Force
                    Write-Host "Copied '$($_.FullName)' -> '$target'"
                }
            }
        }
        if (-not $WhatIf) {
            # remove source .vscode if empty
            if ((Get-ChildItem -Path $dir.FullName -Force | Measure-Object).Count -eq 0) {
                Remove-Item -Path $dir.FullName -Force
                Write-Host "Removed empty folder: $($dir.FullName)"
            }
        }
    }
}
else {
    Write-Host "No extra .vscode folders found."
}

# Move other named folders into ml_projects
foreach ($name in $foldersToMerge) {
    $src = Join-Path $root $name
    if (Test-Path $src) {
        Write-Host "Processing: $src"
        Get-ChildItem -Path $src -Force | ForEach-Object {
            $target = Join-Path $dest $_.Name
            if (Test-Path $target) {
                # if exists, create folder with timestamp suffix
                $ts = (Get-Date).ToString("yyyyMMddHHmmss")
                $target = "$target.$ts"
            }
            if ($WhatIf) {
                Write-Host "[WhatIf] Move '$($_.FullName)' -> '$target'"
            }
            else {
                Move-Item -Path $_.FullName -Destination $target -Force
                Write-Host "Moved '$($_.FullName)' -> '$target'"
            }
        }
        if (-not $WhatIf) {
            # optional: remove source folder if empty
            if ((Get-ChildItem -Path $src -Force | Measure-Object).Count -eq 0) {
                Remove-Item -Path $src -Force
                Write-Host "Removed empty folder: $src"
            }
        }
    }
    else {
        Write-Host "Source folder not found: $src"
    }
}

Write-Host "Done. Please review the 'ml_projects' folder and the root '.vscode' and commit changes."
Write-Host "Done. Please review the 'ml_projects' folder and the root '.vscode' and commit changes."
