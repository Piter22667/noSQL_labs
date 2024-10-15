create table services
(
    service_id    integer not null
        primary key,
    service_name  varchar(64),
    price         integer,
    is_deleted    boolean                  default false,
    last_modified timestamp with time zone default CURRENT_TIMESTAMP
);

alter table services
    owner to postgres;

create trigger set_timestamp1
    before update
    on services
    for each row
execute procedure update_timestamp1();

