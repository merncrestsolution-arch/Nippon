-- ============================================================
-- NIPPON ELECTRICALS POS — Supabase Database Setup Script
-- Run this in Supabase SQL Editor
-- ============================================================

-- Create tables
create table if not exists users (
  id bigint primary key,
  data jsonb not null
);

create table if not exists products (
  id bigint primary key,
  data jsonb not null
);

create table if not exists sales (
  id bigint primary key,
  data jsonb not null
);

create table if not exists cheques (
  id bigint primary key,
  data jsonb not null
);

create table if not exists companies (
  id bigint primary key,
  data jsonb not null
);

-- Disable Row Level Security (required for public API access)
alter table users disable row level security;
alter table products disable row level security;
alter table sales disable row level security;
alter table cheques disable row level security;
alter table companies disable row level security;

-- Insert default admin user
insert into users (id, data) values (
  1,
  '{
    "id": 1,
    "name": "Admin",
    "username": "admin",
    "password": "admin123",
    "role": "admin",
    "email": "",
    "active": true,
    "avatar": "A"
  }'::jsonb
) on conflict (id) do nothing;

-- Done! Now copy your Project URL and Anon Key from:
-- Supabase Dashboard → Project Settings → API
