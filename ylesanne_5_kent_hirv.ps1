# Kent Hirv
# Tunnikontroll nr 5
# 09.11.23

# leiab kasutajad
$users = Get-LocalUser | Where-Object { $_.Enabled -eq $true }

# määrab kuhu csv fail läheb
$csvPath = "$env:USERPROFILE\Desktop\kasutajad.csv"

# loob csv faili
Out-File -FilePath $csvPath -Encoding UTF8


# iga kasutaja kohta
foreach ($user in $users) {
    # lisab mu nime faili
    Add-Content -Path $csvPath -Value $user
}

# lisab kommentaari
Add-Content -Path $csvPath -Value "# Kent Hirv $(Get-Date -Format 'yyyy-MM-dd')"