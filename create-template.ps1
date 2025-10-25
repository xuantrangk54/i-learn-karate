# ============================
# Script: create-folders.ps1
# Purpose: Chỉ tạo cấu trúc thư mục cho dự án Karate
# ============================

Write-Host "🚀 Creating Karate project folders..."

# Danh sách thư mục cần tạo
$folders = @(
    "src/test/java/com/ilearnkarate/runners",
    "src/test/java/com/ilearnkarate/utils",
    "src/test/resources/features/auth",
    "src/test/resources/features/users",
    "src/test/resources/data",
    "src/test/resources/config",
    "target"
)

foreach ($folder in $folders) {
    if (-not (Test-Path $folder)) {
        New-Item -ItemType Directory -Force -Path $folder | Out-Null
        Write-Host "Created folder: $folder"
    } else {
        Write-Host "Folder already exists: $folder"
    }
}

Write-Host "`n✅ All folders created successfully!"
Write-Host "You can now add your feature files and test runners."