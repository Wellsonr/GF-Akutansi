# 1. Terminate GF.exe
$processesToTerminate = Get-Process -Name "GF" -ErrorAction SilentlyContinue
if ($processesToTerminate) {
    $processesToTerminate | ForEach-Object { $_.Kill() }
    Write-Host "GF.exe terminated."
}

# 2. Rename GF.exe into GFMMddyy.exe
$dateSuffix = Get-Date -Format "ddMMyy"
$exePath = "C:\GF\GF\bin\debug\GF.exe"
$newExeName = "C:\GF\GF\bin\debug\GF$dateSuffix.exe"

# Check if newExeName exists, delete it
if (Test-Path $newExeName) {
    Remove-Item $newExeName -Force
    Write-Host "Deleted existing $newExeName."
}

Rename-Item -Path $exePath -NewName $newExeName
Write-Host "GF.exe renamed to $newExeName."

# 3. Download file
$Url = "https://d1l0mw2f-80.asse.devtunnels.ms/gf/gf.exe"
$OutputFile = "C:\GF\GF\bin\debug\GF.exe"

# Check if OutputFile exists, delete it
if (Test-Path $OutputFile) {
    Remove-Item $OutputFile -Force
    Write-Host "Deleted existing $OutputFile."
}

# Check if the file does not exist before downloading
if (-not (Test-Path $OutputFile)) {
    Invoke-WebRequest -Uri $Url -OutFile $OutputFile
    Write-Host "GF.exe downloaded to $OutputFile."

    # 4. ReRun GF.exe
    Start-Process -FilePath $OutputFile
    Write-Host "GF.exe restarted."
} else {
    Write-Host "File $OutputFile already exists. Script will not continue."
}