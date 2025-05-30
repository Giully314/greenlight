CREATE TABLE IF NOT EXISTS users (
    id bigserial pRIMARY KEY,
    created_at timestamp(0) with time zone NOT NULL DEFAULT NOW(),
    name text NOT NULL,
    email citext UNIQUE NOT NULL,
    password_hash bytea NOT NULL,
    activated BOOL not null,
    VERSION INTEGER not null default 1
);