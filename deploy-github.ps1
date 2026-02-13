# Quick Deploy to GitHub Pages
# Run this script to deploy your Valentine's game to GitHub Pages

Write-Host "💝 Valentine's Day Game - GitHub Pages Deployment" -ForegroundColor Magenta
Write-Host "=================================================" -ForegroundColor Magenta
Write-Host ""

# Check if git is installed
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "❌ Git is not installed. Please install Git first:" -ForegroundColor Red
    Write-Host "   https://git-scm.com/download/win" -ForegroundColor Yellow
    exit
}

# Get GitHub username
$username = Read-Host "Enter your GitHub username"
$repoName = Read-Host "Enter repository name (default: valentine-game)"
if ([string]::IsNullOrWhiteSpace($repoName)) {
    $repoName = "valentine-game"
}

Write-Host ""
Write-Host "📝 Step 1: Initializing Git repository..." -ForegroundColor Cyan
git init

Write-Host "📝 Step 2: Adding files..." -ForegroundColor Cyan
git add .

Write-Host "📝 Step 3: Creating commit..." -ForegroundColor Cyan
git commit -m "💝 Valentine's Day Game for my love"

Write-Host "📝 Step 4: Creating main branch..." -ForegroundColor Cyan
git branch -M main

Write-Host ""
Write-Host "⚠️  IMPORTANT: Before continuing, please:" -ForegroundColor Yellow
Write-Host "   1. Go to https://github.com/new" -ForegroundColor White
Write-Host "   2. Create a new repository named: $repoName" -ForegroundColor White
Write-Host "   3. Make it PUBLIC (required for GitHub Pages)" -ForegroundColor White
Write-Host "   4. DO NOT initialize with README" -ForegroundColor White
Write-Host ""
$continue = Read-Host "Have you created the repository? (y/n)"

if ($continue -eq 'y' -or $continue -eq 'Y') {
    Write-Host ""
    Write-Host "📝 Step 5: Adding remote..." -ForegroundColor Cyan
    git remote add origin "https://github.com/$username/$repoName.git"
    
    Write-Host "📝 Step 6: Pushing to GitHub..." -ForegroundColor Cyan
    git push -u origin main
    
    Write-Host ""
    Write-Host "✅ Code pushed successfully!" -ForegroundColor Green
    Write-Host ""
    Write-Host "📝 Final Step: Enable GitHub Pages" -ForegroundColor Cyan
    Write-Host "   1. Go to: https://github.com/$username/$repoName/settings/pages" -ForegroundColor White
    Write-Host "   2. Under 'Source', select 'Deploy from a branch'" -ForegroundColor White
    Write-Host "   3. Select branch: main, folder: / (root)" -ForegroundColor White
    Write-Host "   4. Click Save" -ForegroundColor White
    Write-Host ""
    Write-Host "🎉 Your game will be available at:" -ForegroundColor Green
    Write-Host "   https://$username.github.io/$repoName/valentine-game.html" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "💝 Share this link with your girlfriend! 💝" -ForegroundColor Magenta
} else {
    Write-Host ""
    Write-Host "⚠️  Deployment cancelled. Run this script again when ready!" -ForegroundColor Yellow
}

Write-Host ""
Read-Host "Press Enter to exit"
