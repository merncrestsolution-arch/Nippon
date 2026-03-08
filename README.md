# ⚡ Nippon Electricals — Smart POS v3

Mobile-first PWA with **real-time cloud database** (Supabase). Works across 4+ devices simultaneously.

## 🚀 Setup Guide

### Step 1 — Deploy to GitHub Pages
```bash
git init && git add . && git commit -m "Nippon Electricals POS v3"
git remote add origin https://github.com/YOUR_USERNAME/nippon-electricals.git
git push -u origin main
# GitHub → Settings → Pages → Source: main / (root) → Save
```

### Step 2 — Create Supabase Project
1. Go to **supabase.com** → Sign up (free)
2. New Project → name it `nippon-pos` → Create
3. Wait ~2 min for project to be ready

### Step 3 — Run SQL Setup
1. Supabase → SQL Editor → New Query
2. Open `supabase-setup.sql` → Paste → Run

### Step 4 — Connect the App
1. Open your GitHub Pages URL
2. App shows Setup Screen → enter Supabase URL + Anon Key
3. (Found in Supabase → Project Settings → API)
4. Click Connect & Start

### Step 5 — All Other Devices
Open the same URL on every device → enter same credentials → all devices share live data instantly.

## 🔐 Default Login
- Username: `admin` | Password: `admin123`

## 📊 Modules
POS · Products · Companies · Cheques · Users · Reports (Excel + PDF)

## 🔄 Real-Time Sync
Any change on one device instantly appears on all other devices.
