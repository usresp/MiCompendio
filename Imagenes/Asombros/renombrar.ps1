$files = Get-ChildItem -File | Where-Object { $_.Extension -match "\.(jpg|png)$" } | Sort-Object { Get-Random }

$i = 1
foreach ($file in $files) {
    $ext = $file.Extension
    $newName = "AutorDesconocido$($i)$ext"
    if ($file.Name -ne $newName) {
        Rename-Item -Path $file.FullName -NewName $newName -Force
    }
    $i++
}