# ⚡ Nippon Electricals — Smart POS v2

Mobile-first PWA Point of Sale system with full management features. Built for Sri Lanka (LKR currency). No server needed — runs 100% in the browser with IndexedDB.

---

## 🆕 What's New in v2
- **LKR (Rs.) currency** throughout
- **IndexedDB database** — real browser database, not just localStorage
- **POS fixed** — New Bill button always works, fresh state every sale
- **Smart Cheque Management** — 3 categories with rich details
- **Export to Excel & PDF** — every module
- **Cheque image upload** — photograph cheques in the app
- **Sri Lanka bank list** — pre-populated

---

## ✨ Features

### 🛒 POS (Fixed & Enhanced)
- Product grid with category filter
- Cart with quantity controls
- GST/Tax support (per product)
- Cash change calculator
- Payment: Cash / Card / UPI / Cheque
- **Smart Bill print** (thermal-style)
- ✅ **New Bill always works** — each sale gets a fresh POS

### 🏦 Cheque Management (New)
| Category | Fields |
|---|---|
| **Customer Received** | Customer name, cheque no, bank, cheque date, due date, invoice ref, status |
| **Company/Dealer Given** | Company name, given date, cheque date, bill number, **cheque image**, return flag |
| **Return Cheque** | Party, reason, reference invoice |

Actions: Mark Cleared / Bounced / Returned · View cheque image · Edit · Delete

### 📊 Export (New)
- **Sales**: Excel + PDF with full transaction details
- **Products**: Excel + PDF inventory report
- **Cheques**: Excel + PDF with all fields

### 📦 Product Management
- Add/Edit/Toggle/Delete products
- Low stock alerts
- Per-product tax rate
- Category filter

### 👥 User Management
- Admin / Manager / Cashier roles
- Per-user sales stats
- Activate/Deactivate users

---

## 🗄️ Database
Uses **IndexedDB** (browser's built-in database):
- Survives page refreshes
- No server required
- Stores: `users`, `products`, `sales`, `cheques`
- Cheque images stored as compressed JPEG base64

---

## 🚀 Deploy to GitHub Pages

```bash
git clone https://github.com/YOUR_USERNAME/nippon-electricals.git
cd nippon-electricals
git add .
git commit -m "Nippon Electricals POS v2"
git push origin main
# Settings → Pages → main → / (root) → Save
```

---

## 🔐 Default Logins

| Username | Password | Role |
|---|---|---|
| `admin` | `admin123` | Admin |
| `cashier1` | `cash123` | Cashier |
| `manager` | `mgr123` | Manager |

---

## 📱 Install as App
1. Open in Chrome/Safari on mobile
2. **"Add to Home Screen"**
3. Tap icon — works like native app!

---

## 📄 License
MIT — © Nippon Electricals, Sri Lanka
