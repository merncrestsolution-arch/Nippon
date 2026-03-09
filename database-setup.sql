-- ═══════════════════════════════════════════════════════════════
--  NIPPON ELECTRICALS — Smart POS
--  Supabase Database Setup Script
--  Run this in: Supabase → SQL Editor → New Query → RUN
-- ═══════════════════════════════════════════════════════════════

-- Create tables (all use JSONB wrapper pattern)
create table if not exists users    (id bigint primary key, data jsonb not null);
create table if not exists products (id bigint primary key, data jsonb not null);
create table if not exists sales    (id bigint primary key, data jsonb not null);
create table if not exists cheques  (id bigint primary key, data jsonb not null);
create table if not exists companies(id bigint primary key, data jsonb not null);
create table if not exists expenses (id bigint primary key, data jsonb not null);

-- Disable Row Level Security (required for the app to work)
alter table users     disable row level security;
alter table products  disable row level security;
alter table sales     disable row level security;
alter table cheques   disable row level security;
alter table companies disable row level security;
alter table expenses  disable row level security;

-- Done! Now go to Project Settings → API and copy:
--   • Project URL  (https://xxxx.supabase.co)
--   • Anon / Public Key  (eyJhbGci...)
