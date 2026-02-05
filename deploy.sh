#!/bin/bash
# API Scout - Quick Deploy Script

set -e

echo "📡 API Scout - Quick Deploy"
echo "=============================="
echo ""

# Check if git is initialized
if [ ! -d .git ]; then
    echo "🔧 Initializing git..."
    git init
    git branch -M main
fi

# Add files
echo "📦 Adding files..."
git add .

# Commit
echo "💾 Committing..."
git commit -m "Deploy API Scout $(date +%Y-%m-%d)" || echo "No changes to commit"

# Check if remote exists
if ! git remote get-url origin &> /dev/null; then
    echo ""
    echo "🔗 Setting up remote..."
    read -p "Enter your GitHub username: " username
    git remote add origin "https://github.com/$username/api-scout.git"
    
    echo ""
    echo "📝 Next steps:"
    echo "1. Create repo: gh repo create api-scout --public"
    echo "2. Push: git push -u origin main"
    echo "3. Enable Pages: Repo Settings → Pages → Source: main"
    echo "4. Configure DNS in GoDaddy (see SETUP.md)"
    echo ""
    echo "Or run: gh repo create api-scout --public && git push -u origin main"
else
    echo "🚀 Pushing to GitHub..."
    git push origin main
fi

echo ""
echo "✅ Deploy complete!"
echo ""
echo "🌐 Your site will be live at:"
echo "   https://[username].github.io/api-scout/"
echo ""
echo "📖 See SETUP.md for DNS configuration"
