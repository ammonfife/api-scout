# API Scout - Product Pivot

## Original Concept
Weekly newsletter with competitive intelligence ($15/month)

## NEW CONCEPT (Actual Product)
**Unified Marketing Platform** - Connect all your marketing/ad accounts in one click, bridge traditional advertising with AI ecosystem

---

## Core Value Proposition

**"Start marketing in 2 minutes, not 2 weeks"**

OAuth-based onboarding that automatically connects:
- Traditional ad platforms (Google, Meta, LinkedIn)
- AI platforms (OpenAI, Anthropic)
- Your domain, assets, and business info

Then immediately actionable for:
- Running ads across all platforms from one place
- AI-powered marketing (new ecosystem)
- Unified analytics and reporting
- Not leaving traditional ad world behind

---

## OAuth Integration Flow

### Step 1: Sign In with Google
**Pulls:**
- Google Ads account(s)
- Google Search Console (domain verification)
- Google Analytics
- Business Profile
- Email for account creation

### Step 2: Connect Meta
**Pulls:**
- Facebook Business Manager
- Instagram Business Account
- Facebook/Instagram Ads accounts
- Meta Pixel
- Existing campaigns and assets

### Step 3: Connect LinkedIn
**Pulls:**
- LinkedIn Company Page
- LinkedIn Ads account(s)
- Campaign Manager access
- Company info and followers

### Step 4: Connect AI Platforms (Optional)
**OpenAI OAuth (if exists):**
- API key
- Usage limits
- Existing assistants/models

**Anthropic/Claude:**
- API key entry (manual if no OAuth)
- Usage tracking

**Alternative:** Bring your own API keys for any provider

---

## What Gets Automatically Configured

1. **Domain & Assets**
   - Domain from Google Search Console
   - Existing website verified
   - Meta Pixel installed check
   - Google Analytics connected

2. **Ad Accounts**
   - All Google Ads accounts linked
   - All Meta ad accounts available
   - LinkedIn Campaign Manager ready
   - Billing info from each platform (view only)

3. **Marketing Intelligence**
   - Current campaigns pulled in
   - Historical performance data
   - Audience insights
   - Existing creatives/assets

4. **AI Marketing Capability**
   - API keys for AI platforms
   - Budget allocation for AI marketing
   - Integration with traditional campaigns
   - Unified dashboard

---

## The Platform (What You Can Do After OAuth)

### Unified Campaign Creation
- Create ads across Google/Meta/LinkedIn from one interface
- AI-generated ad copy and creative variations
- Budget distribution across platforms
- A/B testing coordinated across channels

### AI-Native Marketing
- Deploy AI agents for customer acquisition
- AI-powered content generation
- Automated campaign optimization
- New channels (ChatGPT plugin store, Claude integrations, etc.)

### Bridge Old & New
- Don't abandon Google/Meta ads that work
- Layer AI marketing on top
- Unified analytics showing AI ROI vs traditional
- Migration path from traditional → AI-first

### Immediate Actionability
- No manual CSV exports
- No copying API keys 50 times
- No "connect your account" friction
- Start running campaigns in minutes

---

## Technical Architecture (What We Need to Build)

### Frontend
- Landing page with OAuth flow
- Dashboard showing all connected accounts
- Campaign creation interface
- Analytics/reporting views

### Backend
- OAuth handlers for Google/Meta/LinkedIn/OpenAI
- Database storing account connections (encrypted)
- API integrations for each platform
- Job queue for data syncing

### Infrastructure
- Auth system (NextAuth or similar)
- PostgreSQL or Turso for data
- Redis for caching/jobs
- Hosting (Vercel/Railway/Fly.io)

### APIs to Integrate
- Google Ads API
- Meta Marketing API
- LinkedIn Marketing API
- OpenAI API
- Anthropic API
- Google Search Console API
- Google Analytics API

---

## Pricing Model

**Freemium:**
- Free: Connect accounts, view unified dashboard
- Paid: Create campaigns, AI features, advanced analytics

**Tiers:**
- **Starter:** $49/month - 1 business, basic features
- **Growth:** $149/month - AI campaign creation, advanced analytics
- **Scale:** $499/month - Multi-business, white-label, API access

**Or Usage-Based:**
- Free to connect
- % of ad spend managed through platform (2-5%)
- AI credits for AI marketing features

---

## MVP Scope (Launch in 2 weeks)

### Phase 1: OAuth Onboarding (Week 1)
- [ ] Google OAuth (Ads + Search Console)
- [ ] Meta OAuth (Ads + Business Manager)
- [ ] LinkedIn OAuth (Company Page + Ads)
- [ ] Dashboard showing connected accounts
- [ ] Basic account data display

### Phase 2: Campaign Creation (Week 2)
- [ ] Create Google Ads from platform
- [ ] Create Meta ads from platform
- [ ] AI-powered ad copy generation
- [ ] Launch campaigns to connected accounts
- [ ] Basic analytics dashboard

### Phase 3: AI Marketing (Week 3-4)
- [ ] OpenAI/Claude integration
- [ ] AI agent deployment for lead gen
- [ ] Unified ROI tracking (traditional + AI)
- [ ] Automated optimization

---

## Go-to-Market Strategy

**Target Audience:**
1. Small businesses struggling with marketing complexity
2. Agencies managing multiple client accounts
3. Startups wanting to experiment with AI marketing

**Launch Channels:**
1. ProductHunt - "Unified marketing platform bridging ads & AI"
2. HackerNews - "OAuth-based marketing platform for developers"
3. LinkedIn ads targeting marketing managers
4. Twitter/X marketing to AI early adopters

**Hook:**
"Stop copying API keys and connecting accounts. Start marketing in 2 minutes with OAuth."

---

## Competitive Landscape

**Similar Tools:**
- Zapier (automation, not marketing-specific)
- Madgicx (Meta ads only)
- Supermetrics (reporting, not campaign creation)
- Various AI marketing tools (not integrated with traditional)

**Our Differentiation:**
- OAuth-first onboarding (fastest setup)
- Bridge traditional + AI (not either/or)
- Unified dashboard (one place for everything)
- Developer-friendly (API access, self-service)

---

## Questions to Answer

1. **Tech Stack?**
   - Next.js + Vercel for frontend/backend?
   - Turso (SQLite) or PostgreSQL?
   - Auth provider (Clerk, Auth0, or custom)?

2. **Hosting?**
   - Vercel (easiest)
   - Railway (more control)
   - AWS/GCP (overkill for MVP)

3. **OAuth Apps - Who Creates?**
   - Need Google Cloud project for OAuth
   - Need Meta Developer App
   - Need LinkedIn Developer App
   - Can I create these or does Ben need to?

4. **Domain?**
   - scout.gptagency.ai?
   - New domain for this product?
   - Rebrand entirely?

5. **Database for Secrets?**
   - User OAuth tokens encrypted at rest
   - API keys for AI platforms
   - Where to store securely? (Turso with encryption, Vault, etc.)

---

## Next Steps (Right Now)

1. **Validate the pivot** - Is this the right direction?
2. **Choose tech stack** - What framework/hosting?
3. **Set up OAuth apps** - Google/Meta/LinkedIn developer accounts
4. **Build MVP** - Start with Google OAuth + dashboard
5. **Deploy and test** - Get first user flow working

This is a real SaaS product, not a $0 weekend project. Estimated startup cost: $50-200/month for infrastructure.

**Is this the vision?** Should I start building the OAuth onboarding flow?
