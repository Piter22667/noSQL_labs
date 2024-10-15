create table guests
(
    guest_id      integer not null
        primary key,
    guest_name    varchar(64),
    email         varchar(64),
    phone         varchar(18),
    is_deleted    boolean                  default false,
    last_modified timestamp with time zone default CURRENT_TIMESTAMP
);

alter table guests
    owner to postgres;

create trigger set_timestamp
    before update
    on guests
    for each row
execute procedure update_timestamp();

create trigger set_timestamp2
    before update
    on guests
    for each row
execute procedure update_timestamp2();

