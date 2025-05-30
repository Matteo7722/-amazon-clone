# Remove package-lock.json if it exists
if (Test-Path package-lock.json) {
    Remove-Item package-lock.json
    Write-Host "Deleted package-lock.json"
} else {
    Write-Host "No package-lock.json found"
}

# Remove node_modules folder if it exists
if (Test-Path node_modules) {
    Remove-Item -Recurse -Force node_modules
    Write-Host "Deleted node_modules folder"
} else {
    Write-Host "No node_modules folder found"
}

# Clear Yarn cache
Write-Host "Clearing Yarn cache..."
yarn cache clean
Write-Host "Yarn cache cleared."

# Reinstall dependencies
Write-Host "Installing dependencies..."
yarn install
Write-Host "Dependencies installed successfully."
