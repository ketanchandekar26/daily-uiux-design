param (
    [Parameter(Mandatory = $false)]
    [string]$Day = "001",

    [Parameter(Mandatory = $false)]
    [string]$Title = "Sign Up & Onboarding Flow",

    [Parameter(Mandatory = $false)]
    [string]$Message = ""
)

$commitMsg = if ($Message -ne "") { $Message } else { "feat(day-$Day): $Title - interactive prototype & UX documentation" }

Write-Host "🚀 Staging and committing changes..." -ForegroundColor Cyan
git add .
git commit -m "$commitMsg"

Write-Host "⬆️  Pushing to GitHub main branch..." -ForegroundColor Cyan
git push origin main

Write-Host "🌐 GitHub Pages automated deployment triggered!" -ForegroundColor Green
Write-Host "Live URL: https://ketanchandekar26.github.io/daily-uiux-design/" -ForegroundColor Yellow
