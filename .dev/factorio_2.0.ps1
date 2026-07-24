Set-Variable -Name workspace -Value $Env:FACTORIO_WORKSPACE
Set-Variable -Name mod_base -Value $Env:FACTORIO_20_MODS_BASE
Set-Variable -Name package -Value "khaosbash"

New-Item -ItemType Directory -Force -Path "$mod_base" | Out-Null

Set-Variable -Name version -Value (Get-Content "$workspace\$package\info.json" | ConvertFrom-Json).version
Move-Item -Path "$workspace\$package\${package}_${version}.zip" -Destination "$mod_base" -Force -ErrorAction SilentlyContinue

Start-Process -FilePath "${Env:FACTORIO_20_PATH}\bin\x64\Factorio.exe" -ArgumentList "--mod-directory ${mod_base}"
