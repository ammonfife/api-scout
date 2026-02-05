# API Scout - Setup Guide

**Status:** Ready to deploy
**Cost:** $0 upfront, $0/month (until 500+ subscribers)

---

## ✅ What's Done

1. **Landing page** - `index.html` ready to deploy
2. **First newsletter issue** - `issue-001.md` complete with real market intelligence
3. **Domain** - Using existing `gptagency.ai` (zero cost)
4. **Budget** - Under $50 (actually $0 to start)

---

## 🚀 Deployment Steps

### 1. Domain Setup (GoDaddy)

**Option A: Use main domain**
- Point `gptagency.ai` to GitHub Pages
- DNS Settings → A Record → `185.199.108.153`, `185.199.109.153`, `185.199.110.153`, `185.199.111.153`

**Option B: Use subdomain (RECOMMENDED)**
- Create `scout.gptagency.ai` or `api.gptagency.ai`
- DNS Settings → CNAME → `[your-github-username].github.io`

### 2. GitHub Pages Hosting (FREE)

```bash
# Create new repo
gh repo create api-scout --public

# Push files
cd /Users/benfife/.openclaw/workspace-q/api-scout
git init
git add .
git commit -m "Initial API Scout launch"
git branch -M main
git remote add origin https://github.com/[your-username]/api-scout.git
git push -u origin main

# Enable GitHub Pages
# Go to repo Settings → Pages → Source: main branch → Save
```

**Live in 2 minutes:** `https://[your-username].github.io/api-scout/`

### 3. Email Service (Mailchimp FREE tier)

1. Go to mailchimp.com/signup
2. Create account with your email
3. Create audience: "API Scout Subscribers"
4. Get embedded form code
5. Replace form in `index.html` with Mailchimp code

**Mailchimp limits (FREE tier):**
- 500 contacts
- 1,000 emails/month
- Mailchimp branding on emails

**Alternative (also free):** ConvertKit (1,000 subscribers free)

### 4. Payment Processing (Stripe)

1. Create Stripe account at stripe.com
2. Get API keys (Dashboard → Developers → API keys)
3. Create product: "API Scout Weekly" - $15/month
4. Add payment link to landing page

**Stripe fees:** 2.9% + $0.30 per transaction (standard)

---

## 📧 Newsletter Delivery Options

### Option A: Manual (Week 1-2)
- Send first 2 issues manually via Mailchimp
- Test content, gather feedback
- **Cost:** $0

### Option B: Automated (Week 3+)
- Schedule via Mailchimp automation
- Use RSS-to-Email feature
- **Cost:** $0 (still under 500 subscribers)

### Option C: Custom Automation (Later)
- GitHub Actions + SendGrid API
- Fully autonomous weekly send
- **Cost:** ~$5/month (SendGrid)

---

## 🎯 Launch Checklist

- [ ] Deploy to GitHub Pages
- [ ] Configure GoDaddy DNS
- [ ] Verify domain resolving
- [ ] Create Mailchimp account
- [ ] Replace signup form with Mailchimp embed
- [ ] Create Stripe product
- [ ] Add payment link to page
- [ ] Send issue #001 to first subscribers
- [ ] Post on Twitter/HN/Reddit

---

## 📊 Week 1 Goals

**Traffic:**
- 50+ landing page visits
- 10+ email signups
- 1-2 paying subscribers

**Marketing:**
- Post on HackerNews (Show HN: API Scout)
- Tweet from your account
- Share in dev Discord/Slack communities
- DM 10 dev tool founders directly

---

## 💰 Revenue Model

| Subscribers | Monthly Revenue | Annual Revenue |
|------------|-----------------|----------------|
| 5          | $75             | $900           |
| 10         | $150            | $1,800         |
| 25         | $375            | $4,500         |
| 50         | $750            | $9,000         |
| 100        | $1,500          | $18,000        |

**Breakeven:** 2 subscribers (covers future costs)
**Profitable:** 5 subscribers (first target)
**Sustainable:** 25 subscribers (covers expansion)

---

## 🤖 Autonomous Operation Plan

Once proven (10+ subscribers):

1. **Content automation:** I research + write weekly issues
2. **Delivery automation:** GitHub Actions schedules sends
3. **Growth automation:** Auto-post to aggregators
4. **Support automation:** I handle subscriber questions

**Ben's role:** Approve strategy, handle financials
**My role:** Everything else

---

## 🚨 Critical Info Needed

To complete setup, I need:

1. **GitHub username:** For repo creation
2. **Email address:** For Mailchimp account
3. **Stripe account:** For payments (or I can walk you through)
4. **GoDaddy login:** To configure DNS (or you can do it)

---

**Ready to deploy?** Give me the GitHub username and I'll create the repo now.
