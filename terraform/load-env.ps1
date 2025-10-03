# Save this as load-env.ps1
foreach($line in Get-Content .\.env) {
    if ($line.Trim() -and !$line.StartsWith("#")) {
        $parts = $line -split '=', 2
        if ($parts.Count -eq 2) {
            $key = $parts[0].Trim()
            $value = $parts[1].Trim()
            # Use Set-Item to set the environment variable
            Set-Item -Path "env:$key" -Value $value
            Write-Host "Set $key environment variable"
        }
    }
}