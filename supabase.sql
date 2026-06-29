-- Execute no SQL Editor do Supabase quando quiser ativar banco online.
create table if not exists clientes (
  id uuid primary key default gen_random_uuid(),
  pedido text, data_venda date, nome text not null, telefone text,
  endereco text, observacoes text, valor numeric default 0, entrada numeric default 0,
  laboratorio text, previsao date, status text, armacao_recebida boolean default false,
  exame_recebido boolean default false, remarcada date, remarcado boolean default false,
  created_at timestamp with time zone default now()
);
create table if not exists consertos (
  id uuid primary key default gen_random_uuid(),
  os text, data date, nome text not null, telefone text, servico text,
  valor numeric default 0, entrada numeric default 0, status text, observacoes text,
  created_at timestamp with time zone default now()
);
