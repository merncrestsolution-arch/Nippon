-- ═══════════════════════════════════════════════════════════
--  NIPPON ELECTRICALS — Supabase Database Setup
--  Run this ONCE in: Supabase → SQL Editor → New Query
-- ═══════════════════════════════════════════════════════════

-- 1. Create tables (JSONB wrapper pattern — flexible, no migrations needed)
create table if not exists users     (id bigint primary key, data jsonb not null);
create table if not exists products  (id bigint primary key, data jsonb not null);
create table if not exists sales     (id bigint primary key, data jsonb not null);
create table if not exists cheques   (id bigint primary key, data jsonb not null);
create table if not exists companies (id bigint primary key, data jsonb not null);

-- 2. Disable Row Level Security (shop internal app — staff only access)
alter table users     disable row level security;
alter table products  disable row level security;
alter table sales     disable row level security;
alter table cheques   disable row level security;
alter table companies disable row level security;

-- 3. Enable Realtime (live sync across all 4+ devices)
alter publication supabase_realtime add table users;
alter publication supabase_realtime add table products;
alter publication supabase_realtime add table sales;
alter publication supabase_realtime add table cheques;
alter publication supabase_realtime add table companies;

-- 4. Insert default admin user (login: admin / admin123)
insert into users (id, data) values (1,
  '{"id":1,"name":"Admin","username":"admin","password":"admin123","role":"admin","email":"","active":true,"avatar":"A","createdAt":"2025-01-01"}'
) on conflict (id) do nothing;

-- ═══════════════════════════════════════════════════════════
-- Done! Now open the app and enter your Supabase URL + anon key.
-- ═══════════════════════════════════════════════════════════
