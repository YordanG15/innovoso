-- Ejecutar completo en Supabase > SQL Editor

create table if not exists sesiones (
  codigo text primary key,
  fase text not null default 'escribir' check (fase in ('escribir','dialogo','evaluar','cerrada')),
  actualizado timestamptz default now()
);

create table if not exists pesos (
  id bigint generated always as identity primary key,
  sesion text not null,
  categoria text,
  peso text not null check (char_length(peso) <= 300),
  carrera text,
  anio text,
  creado timestamptz default now()
);

create table if not exists conexion (
  id bigint generated always as identity primary key,
  sesion text not null,
  conexion int not null check (conexion between 1 and 5),
  alivio int not null check (alivio between 1 and 5),
  testimonio text check (char_length(testimonio) <= 500),
  creado timestamptz default now()
);

alter table sesiones enable row level security;
alter table pesos enable row level security;
alter table conexion enable row level security;

create policy "sesiones_all" on sesiones for all to anon using (true) with check (true);
create policy "pesos_insert" on pesos for insert to anon with check (true);
create policy "pesos_select" on pesos for select to anon using (true);
create policy "conexion_insert" on conexion for insert to anon with check (true);
create policy "conexion_select" on conexion for select to anon using (true);
